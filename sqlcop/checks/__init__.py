import sqlparse


def _patch():
    from sqlalchemy.dialects.mysql.base import RESERVED_WORDS

    for key in sqlparse.keywords.KEYWORDS.keys():
        if key not in RESERVED_WORDS:
            del sqlparse.keywords.KEYWORDS[key]

_patch()
