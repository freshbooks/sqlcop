import sqlparse
import contextlib
from sqlcop.checks import CrossJoinCheck
from mock import Mock, patch, PropertyMock


class TestCheckCrossJoin(object):
    def setup_method(self, method):
        self.has_cross_join = CrossJoinCheck()

    @contextlib.contextmanager
    def patch_schema(self, table_schema):
        ctx_mgr = patch(
            'sqlcop.checks.CrossJoinCheck.tables', new_callable=PropertyMock)
        tables = ctx_mgr.__enter__()
        tables.__get__ = Mock(return_value=table_schema)
        yield
        ctx_mgr.__exit__()

    def test_no_cross_join(self):
        with self.patch_schema({}):
            sql = (
                "SELECT * FROM a LEFT JOIN b "
                "USING (id)"
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == CrossJoinCheck()(stmt)

    def test_has_cross_join(self):
        tbl_a, tbl_b = Mock(), Mock()
        tbl_a.primary_key.columns.keys.return_value = ['id']
        tbl_b.primary_key.columns.keys.return_value = ['id']
        schema = {
            'a': tbl_a,
            'b': tbl_b,
        }
        with self.patch_schema(schema):
            sql = (
                "SELECT * FROM a, b WHERE a.c = 1"
            )
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_cross_join(stmt)

    def test_no_cross_join_with_reserved_words(self):
        with self.patch_schema({}):
            sql = (
                "SELECT * FROM user LEFT JOIN system "
                "USING (id)"
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_cross_join(stmt)

    def test_no_cross_join_if_join_in_where_clause(self):
        tbl_a, tbl_b = Mock(), Mock()
        tbl_a.primary_key.columns.keys.return_value = ['id']
        tbl_b.primary_key.columns.keys.return_value = ['id']
        schema = {
            'a': tbl_a,
            'b': tbl_b,
        }
        with self.patch_schema(schema):
            sql = (
                "SELECT * FROM a, b "
                "WHERE 1 = a.type "
                "AND 'b' = b.activity "
                "AND a.id = b.id "
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_cross_join(stmt)

    def test_has_cross_join_if_not_all_keys_in_join(self):
        tbl_a, tbl_b = Mock(), Mock()
        tbl_a.primary_key.columns.keys.return_value = ['x_id', 'y_id']
        tbl_b.primary_key.columns.keys.return_value = ['x_id', 'y_id']
        schema = {
            'a': tbl_a,
            'b': tbl_b,
        }
        with self.patch_schema(schema):
            sql = (
                "SELECT * FROM a, b "
                "WHERE 1 = a.type "
                "AND 'b' = b.activity "
                "AND a.x_id = b.x_id "
            )
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_cross_join(stmt)

    def test_with_placeholders(self):
        tbl_ps, tbl_user = Mock(), Mock()
        tbl_ps.primary_key.columns.keys.return_value = ['systemid', 'staffid']
        tbl_user.primary_key.columns.keys.return_value = ['systemid', 'userid']
        schema = {
            'user': tbl_user,
            'ps': tbl_ps,
        }
        with self.patch_schema(schema):
            sql = (
                "SELECT * FROM user, ps "
                "WHERE %s = ps.projectid "
                "AND %s = ps.systemid "
                "AND ps.systemid = user.systemid "
                "AND ps.staffid = user.userid "
                "AND user.level = %s "
                "AND user.active = %s "
                "ORDER BY user.userid ASC"
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_cross_join(stmt)
