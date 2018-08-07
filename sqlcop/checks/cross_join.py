from builtins import filter
from builtins import object
import sqlparse
import sqlalchemy as sa
from memoized_property import memoized_property
from collections import defaultdict


class CrossJoinCheck(object):
    def __init__(self, **options):
        self.db_urls = options.get('db_urls', [])

    @memoized_property
    def tables(self):
        tables = {}
        for db_url in self.db_urls:
            engine = sa.create_engine(db_url)
            metadata = sa.MetaData(engine)
            metadata.reflect()
            # Yes if you have the same table name in multiple databases
            # you'll have a bad time here
            tables.update(metadata.tables)

        return tables

    def __call__(self, stmt):
        """
        Check for cross joins in queries.
        Cross joins are *always* wrong in production code at FreshBooks.
        """
        in_from = False
        where_clause = False
        tables = []

        for i, tok in enumerate(stmt.tokens):
            if tok.match(sqlparse.tokens.Keyword, 'FROM'):
                in_from = True

            if (isinstance(tok, sqlparse.sql.Where) or
                    tok.match(sqlparse.tokens.Keyword.DML, 'SELECT') or
                    tok.match(sqlparse.tokens.Keyword, 'INNER JOIN') or
                    tok.match(sqlparse.tokens.Keyword, 'GROUP') or
                    tok.match(sqlparse.tokens.Keyword, 'LEFT OUTER JOIN') or
                    tok.match(sqlparse.tokens.Keyword, 'ORDER') or
                    tok.match(sqlparse.tokens.Keyword, 'LIMIT')):
                in_from = False

            # If we are in the FROM section of a query we could find cross
            # joined tables.
            if in_from:
                # A list of identifiers is bad - probably a cross join.
                if isinstance(tok, sqlparse.sql.IdentifierList):
                    tables += tok.get_identifiers()

                # If we are doing full joins between tables, we should be worried.
                elif self._token_should_append_to_tables(stmt, tok, i):
                    tables.append(tok)

            # Collect conditions and see if some primary keys
            # are missing. If all the primary keys for all the
            # tables are in the where condition, the query should be ok.
            if (isinstance(tok, sqlparse.sql.Where)):
                where_clause = tok

        tables = self._remove_tables_if_join_present_in_where_clause(
            tables, where_clause)
        if len(tables) > 1:
            return True
        return False

    def _token_should_append_to_tables(self, stmt, token, index):
        return isinstance(token, sqlparse.sql.Identifier) and (
            stmt[index-2].match(sqlparse.tokens.Keyword, 'FROM')) or (
            stmt[index-2].match(sqlparse.tokens.Keyword, 'JOIN'))

    def _get_table_keys(self, column_map):
        retval = defaultdict(list)
        for table_name in column_map:
            retval[table_name] = \
                list(self.tables[table_name].primary_key.columns.keys())
        return retval

    def _extract_join_columns(self, tables, comparison):
        """
        Pull out tuples of field identifiers from a sqlparse.sql.IdentifierList
        """
        tokens = comparison.tokens
        # If the comparison only involve one identifier,
        # that means we have a where clause such as:
        # a.active = 1, in which case we don't consider `active`
        # a join column
        is_identifier = lambda t: isinstance(t, sqlparse.sql.Identifier)
        if len(list(filter(is_identifier, tokens))) < 2:
            return []

        columns = []
        for tok in tokens:
            if (isinstance(tok, sqlparse.sql.Identifier) and
                    tok.get_parent_name() in tables):
                column = (tok.get_parent_name(), tok.get_name())
                columns.append(column)
        return columns

    def _remove_tables_if_join_present_in_where_clause(
            self, tables, where_clause):
        table_names = [tok.value for tok in tables]
        join_columns = []
        operator = 'AND'

        # Find any join conditions that reference the cross joined tables.
        if not where_clause:
            return tables
        for tok in where_clause.tokens:
            if tok.match(sqlparse.tokens.Keyword, 'AND|OR', True):
                operator = tok.value

            if (isinstance(tok, sqlparse.sql.Comparison)
                    and operator.upper() == 'AND'):
                join_columns += self._extract_join_columns(table_names, tok)

        # Index columns by table so we can check mappers
        column_map = defaultdict(list)
        for table, column in join_columns:
            column_map[table].append(column)

        primary_keys = self._get_table_keys(column_map)

        # Compare join keys with primary keys.
        # Return the list of tables that do not have all their primary key
        # columns participating in the join.
        for table in column_map:
            if set(primary_keys[table]) == set(column_map[table]):
                table_names.remove(table)
        return table_names
