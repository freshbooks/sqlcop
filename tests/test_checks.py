import sqlparse
from sqlcop.checks import has_cross_join


def test_check_cross_join_no_cross_join():
    sql = (
        "SELECT * FROM a LEFT JOIN b "
        "USING (id)"
    )
    stmt = sqlparse.parse(sql)[0]
    assert False == has_cross_join(stmt)


def test_check_cross_join_has_cross_join():
    sql = (
        "SELECT * FROM a, b WHERE a.c = 1"
    )
    stmt = sqlparse.parse(sql)[0]
    assert True == has_cross_join(stmt)


def test_check_cross_join_no_cross_join_with_reserved_words():
    sql = (
        "SELECT * FROM user LEFT JOIN system "
        "USING (id)"
    )
    stmt = sqlparse.parse(sql)[0]
    assert False == has_cross_join(stmt)
