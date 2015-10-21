import sqlparse


class OrderByCountCheck(object):
    """
    Checks for COUNT() ... ORDER BY which is generally bad.

    Ordering count queries is pointless at best, and very dangerous
    when subqueries are involved.
    """
    def __init__(self, **options):
        self.db_urls = options.get('db_urls', [])

    def __call__(self, stmt):
        has_count = False
        has_order = False
        for i, tok in enumerate(stmt.tokens):
            if 'COUNT' in str(tok).upper():
                has_count = True

            if tok.match(sqlparse.tokens.Keyword, 'FROM'):
                expression = stmt.token_next_by_instance(
                    i,
                    sqlparse.sql.Parenthesis)

                # The parenthesis might contain a subquery,
                # which could contain an ORDER by which we want to avoid
                if expression:
                    select = expression.token_next_by_type(
                        0,
                        sqlparse.tokens.Keyword)
                    if select and select.value == 'SELECT':
                        has_order = self.check_subquery(expression)

            if tok.match(sqlparse.tokens.Keyword, 'ORDER'):
                has_order = True

        if has_count and has_order:
            return True
        return False

    def check_subquery(self, select):
        for i, tok in enumerate(select.tokens):
            if tok.match(sqlparse.tokens.Keyword, 'ORDER'):
                return True
        return False
