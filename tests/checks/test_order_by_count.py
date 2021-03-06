from builtins import object
import sqlparse
import contextlib
from sqlcop.checks.order_by_count import OrderByCountCheck
from mock import Mock, patch, PropertyMock
from pytest import raises


class TestOrderByCountCheck(object):
    def setup_method(self, method):
        self.has_order_by_count = OrderByCountCheck()

    @contextlib.contextmanager
    def patch_schema(self, table_schema):
        ctx_mgr = patch(
            'sqlcop.checks.cross_join.CrossJoinCheck.tables',
            new_callable=PropertyMock)
        tables = ctx_mgr.__enter__()
        tables.__get__ = Mock(return_value=table_schema)
        yield
        ctx_mgr.__exit__()

    def test_ok(self):
        with self.patch_schema({}):
            sql = (
                "SELECT COUNT(*) FROM a LEFT JOIN b "
                "USING (id)"
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)

    def test_ok_not_count(self):
        with self.patch_schema({}):
            sql = "SELECT * FROM a ORDER BY id DESC"
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)

            sql = "SELECT a, b, count FROM a ORDER BY id DESC"
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)

    def test_ok_count_with_group(self):
        """
        count(*) ... GROUP is generally an aggregation query
        which we can ignore.
        """
        with self.patch_schema({}):
            sql = (
                "SELECT count(*), userid "
                "FROM a GROUP BY userid ORDER BY id DESC")
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)

    def test_no_subquery(self):
        with self.patch_schema({}):
            sql = (
                "SELECT COUNT(*) FROM a ORDER BY a.id DESC"
            )
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_order_by_count(stmt)

            sql = (
                "SELECT COUNT(1) FROM a ORDER BY a.id DESC"
            )
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_order_by_count(stmt)

    def test_subquery_no_order(self):
        """
        This query pattern is often emitted by SQLa
        """
        with self.patch_schema({}):
            sql = (
                "SELECT COUNT(*) FROM (SELECT DISTINCT id FROM a)"
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)

    def test_subquery_with_order(self):
        """
        This query pattern is often emitted by SQLa
        """
        with self.patch_schema({}):
            sql = (
                "SELECT COUNT(*) FROM ("
                "SELECT DISTINCT id FROM a ORDER BY id DESC) a"
            )
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_order_by_count(stmt)

    def test_group_by_and_order(self):
        with self.patch_schema({}):
            sql = "select x, count(*) from t group by x order by count(*)"
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)

    def test_find_sub_query_or_table_ignores_keyword_tokens(self):
        # system is a keyword, it will not be matched as an Identifier.
        with self.patch_schema({}):
            sql = "SELECT a, b FROM system"
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_order_by_count(stmt)
