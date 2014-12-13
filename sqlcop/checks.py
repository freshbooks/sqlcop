import sqlalchemy
import sqlparse

from collections import defaultdict


def extract_join_columns(tables, comparison):
    """
    Pull out tuples of field identifiers from a sqlparse.sql.IdentifierList
    """
    columns = []
    for tok in comparison.tokens:
        if (isinstance(tok, sqlparse.sql.Identifier) and
                tok.get_parent_name() in tables):
            column = (tok.get_parent_name(), tok.get_name())
            columns.append(column)
    return columns


def get_table_keys(column_map):
    """
    Grab the primary keys for each table in the join
    """
    engine = sqlalchemy.create_engine(
        'mysql+pymysql://cardapp@127.0.0.1:3306/cardapp')
    metadata = sqlalchemy.MetaData()
    metadata.reflect(bind=engine)

    primary_keys = {}
    for table in column_map:
        t = metadata.tables[table]
        primary_keys[table] = [c.name for c in t.primary_key.columns]
    return primary_keys


def remove_joined_tables(tables, where_clause):
    table_names = [tok.get_name() for tok in tables]
    join_columns = []
    operator = 'AND'

    # Find any join conditions that reference the cross joined tables.
    for i, tok in enumerate(where_clause.tokens):
        if tok.match(sqlparse.tokens.Keyword, '.*', True):
            operator = tok.value

        if isinstance(tok, sqlparse.sql.Comparison) and operator == 'AND':
            join_columns += extract_join_columns(table_names, tok)

    # Index columns by table so we can check mappers
    column_map = defaultdict(list)
    for table, column in join_columns:
        column_map[table].append(column)

    primary_keys = get_table_keys(column_map)

    # Compare join keys with primary keys.
    # Return the list of tables that do not have all their primary key
    # columns participating in the join.
    for table in column_map:
        if set(primary_keys[table]) == set(column_map[table]):
            table_names.remove(table)
    return table_names


def has_cross_join(stmt):
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
                tok.match(sqlparse.tokens.Keyword, 'LEFT OUTER JOIN')):
            in_from = False

        # If we are in the FROM section of a query we could find cross
        # joined tables.
        if in_from:
            # A list of identifiers is bad - probably a cross join.
            if isinstance(tok, sqlparse.sql.IdentifierList):
                tables += tok.get_identifiers()

        # Collect conditions and see if some primary keys
        # are missing. If all the primary keys for all the
        # tables are in the where condition, the query should be ok.
        if (isinstance(tok, sqlparse.sql.Where)):
            where_clause = tok
    # if where_clause and len(tables) > 1:
    #     tables = remove_joined_tables(tables, where_clause)
    if len(tables) > 1:
        return True
    return False
