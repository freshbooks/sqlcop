import sqlparse
from sqlcop.checks import CrossJoinCheck


has_cross_join = CrossJoinCheck()


class TestCheckCrossJoin(object):
    def setup(self):
        self.has_cross_join = CrossJoinCheck()

    # def test_check_cross_join_no_cross_join(self):
    #     sql = (
    #         "SELECT * FROM a LEFT JOIN b "
    #         "USING (id)"
    #     )
    #     stmt = sqlparse.parse(sql)[0]
    #     assert False == self.has_cross_join(stmt)

    # def test_check_cross_join_has_cross_join(self):
    #     sql = (
    #         "SELECT * FROM a, b WHERE a.c = 1"
    #     )
    #     stmt = sqlparse.parse(sql)[0]
    #     assert True == self.has_cross_join(stmt)

    # def test_check_cross_join_no_cross_join_with_reserved_words(self):
    #     sql = (
    #         "SELECT * FROM user LEFT JOIN system "
    #         "USING (id)"
    #     )
    #     stmt = sqlparse.parse(sql)[0]
    #     assert False == self.has_cross_join(stmt)

    # def test_check_cross_join_(self):
    #     sql = (
    #         "SELECT * FROM user, project_staff "
    #         "WHERE %s = project_staff.projectid "
    #         "AND %s = project_staff.systemid "
    #         "AND project_staff.systemid = user.systemid "
    #         "AND project_staff.staffid = user.userid "
    #         "AND user.level = %s "
    #         "AND user.active = %s "
    #         "ORDER BY user.userid ASC"
    #     )
    #     stmt = sqlparse.parse(sql)[0]
    #     assert False == self.has_cross_join(stmt)
