from builtins import str
from builtins import object
from sqlparse.sql import Identifier, Parenthesis
from sqlparse.tokens import Keyword


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
        has_group = False
        for i, tok in enumerate(stmt.tokens):
            if 'COUNT(' in str(tok).upper():
                has_count = True

            if tok.match(Keyword, 'FROM'):
                expression = stmt.token_next_by(
                    i=Parenthesis, idx=i)[-1]

                # If there is an alias on the subquery then sqlparse
                # returns an Identifier. We still need to check if that
                # Identifier actually has child tokens.
                if not expression:
                    identifier = stmt.token_next_by(
                        i=Identifier, idx=i)[-1].token_first()
                    if identifier and hasattr(identifier, 'tokens'):
                        expression = identifier

                # The inner expression might contain a subquery,
                # which could contain an ORDER by which we want to avoid
                if expression:
                    select = expression.token_next_by(
                        t=Keyword, idx=0)[-1]
                    if select and select.value == 'SELECT':
                        has_order = self.check_subquery(expression)

            if tok.match(Keyword, 'ORDER'):
                has_order = True
            if tok.match(Keyword, 'GROUP'):
                has_group = True

        if has_count and has_group and has_order:
            return False
        if has_count and has_order:
            return True
        return False

    def check_subquery(self, select):
        for i, tok in enumerate(select.tokens):
            if tok.match(Keyword, 'ORDER'):
                return True
        return False
