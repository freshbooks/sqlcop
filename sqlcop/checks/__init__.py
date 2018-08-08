import sqlparse


def _patch():
    from sqlalchemy.dialects.mysql.base import RESERVED_WORDS

    for key in list(sqlparse.keywords.KEYWORDS.keys()):
        if key.lower() not in RESERVED_WORDS:
            del sqlparse.keywords.KEYWORDS[key]

_patch()
