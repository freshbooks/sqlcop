import sqlalchemy
import sqlparse

from collections import defaultdict


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
    if len(tables) > 1:
        return True
    return False
