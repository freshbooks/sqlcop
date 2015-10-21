import sqlparse
import contextlib
from sqlcop.checks.cross_join import CrossJoinCheck
from mock import Mock, patch, PropertyMock


class TestCheckCrossJoin(object):
    def setup_method(self, method):
        self.has_cross_join = CrossJoinCheck()

    @contextlib.contextmanager
    def patch_schema(self, table_schema):
        ctx_mgr = patch(
            'sqlcop.checks.cross_join.CrossJoinCheck.tables',
            new_callable=PropertyMock)
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
            assert False == self.has_cross_join(stmt)

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
                "WHERE %%s = ps.projectid "
                "AND %%s = ps.systemid "
                "AND ps.systemid = user.systemid "
                "AND ps.staffid = user.userid "
                "AND user.level = %%s "
                "AND user.active = %%s "
                "ORDER BY user.userid ASC"
            )
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_cross_join(stmt)

    def test_with_simple_subselect(self):
        tbl_i, tbl_npl = Mock(), Mock()
        tbl_i.primary_key.columns.keys.return_value = ['systemid']
        tbl_npl.primary_key.columns.keys.return_value = ['systemid']
        schema = {
            'i': tbl_i,
            'npl': tbl_npl,
        }
        sql = (
            "SELECT * FROM "
            "(SELECT * FROM inv WHERE systemid = %%s) i, "
            "npl WHERE systemid = %%s"
        )
        with self.patch_schema(schema):
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_cross_join(stmt)

    def test_with_more_join_tables(self):
        schema = {
            'u': [],
            'npl': [],
            'gwo': [],
        }
        sql = (
            "SELECT * "
            "FROM u AS u_1, npl"
            "LEFT OUTER JOIN gwo AS gwo_1 "
            "ON gwo_1.systemid = npl.systemid AND gwo_1.orderid = npl.orderid "
            "LEFT OUTER JOIN i AS i_1 "
            "ON npl.systemid = i_1.systemid AND npl.invoiceid = i_1.invoiceid "
            "LEFT OUTER JOIN cn AS cn_1 "
            "ON npl.systemid = cn_1.systemid AND npl.creditid = cn_1.creditid "
            "WHERE npl.systemid = %%s "
            "AND (npl.invoiceid IS NOT NULL AND npl.invoiceid) != %%s "
            "ORDER BY npl.logid DESC"
        )
        with self.patch_schema(schema):
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_cross_join(stmt)

    def test_with_subselect_complex(self):
        schema = {
            'je': [],
            'jed_1': [],
        }
        sql = (
            "SELECT * FROM "
            "  (SELECT * "
            "  FROM je "
            "  WHERE je.systemid = %%s "
            "  AND je.paymentid = %%s  "
            "  ORDER BY je.created DESC, "
            "  LIMIT 0, 1) AS anon_1 "
            "LEFT OUTER JOIN jed AS jed_1 ON "
            "anon_1.xid = jed_1.xid"
            "AND anon_1.systemid = jed_1.systemid "
            "ORDER BY anon_1.created DESC"
        )
        with self.patch_schema(schema):
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_cross_join(stmt)

    def test_with_no_cross_join_covered_by_where(self):
        tbl_a, tbl_b = Mock(), Mock()
        tbl_a.primary_key.columns.keys.return_value = ['projectid', 'systemid']
        tbl_b.primary_key.columns.keys.return_value = ['projectid', 'systemid']
        schema = {
            'project': tbl_a,
            'project_task': tbl_b,
        }
        sql = (
            "SELECT * FROM project, project_task "
            "WHERE %%s = project_task.taskid "
            "AND %%s = project_task.systemid  "
            "AND project_task.projectid = project.projectid "
            "AND project_task.systemid = project.systemid "
            "ORDER BY project.projectid ASC"
        )
        with self.patch_schema(schema):
            stmt = sqlparse.parse(sql)[0]
            assert False == self.has_cross_join(stmt)

    def test_with_cross_join_if_condition_with_or(self):
        tbl_a, tbl_b = Mock(), Mock()
        tbl_a.primary_key.columns.keys.return_value = ['projectid', 'systemid']
        tbl_b.primary_key.columns.keys.return_value = ['projectid', 'systemid']
        schema = {
            'project': tbl_a,
            'project_task': tbl_b,
        }
        sql = (
            "SELECT * FROM project, project_task "
            "WHERE %%s = project_task.taskid "
            "AND %%s = project_task.systemid  "
            "AND project_task.projectid = project.projectid "
            "OR project_task.systemid = project.systemid "
            "ORDER BY project.projectid ASC"
        )
        with self.patch_schema(schema):
            stmt = sqlparse.parse(sql)[0]
            assert True == self.has_cross_join(stmt)
