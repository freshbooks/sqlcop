import sqlparse
import sqlalchemy as sa
from memoized import memoized
from collections import defaultdict


class OrderByCountCheck(object):
    def __init__(self, **options):
        self.db_urls = options.get('db_urls', [])

    def __call__(self, stmt):
        pass
