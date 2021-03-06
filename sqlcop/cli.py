from __future__ import print_function
import sys
import sqlparse
import optparse
from sqlcop.checks.cross_join import CrossJoinCheck
from sqlcop.checks.order_by_count import OrderByCountCheck


def parse_file(filename):
    try:
        return open(filename, 'r').readlines()
    except UnicodeDecodeError:
        # It's unclear whether or not something still relies on the ascii
        # encoding so I've only changed it to use utf-8 on exception.
        return open(filename, 'r', encoding="utf-8").readlines()


CHECKS = (
    (CrossJoinCheck, 'query contains cross join'),
    (OrderByCountCheck, 'query contains a count with an order by clause')
)


def check_query(options, el):
    """
    Run each of the defined checks on a query.
    """
    stmt = sqlparse.parse(el)
    checks = (
        (check_class(**options), message)
        for check_class, message in CHECKS
    )
    for check in checks:
        if check[0](stmt[0]):
            return False, check[1]
    return True, ''


def main():
    parser = optparse.OptionParser('sqlcop')
    parser.add_option(
        '--db-urls',
        help=(
            'Comma-separated db urls. '
            'Used to fetch schema for the database so sqlcop '
            'can make more accurate judgement based on the schema'
        )
    )
    opt, args = parser.parse_args()
    if len(args) < 1:
        parser.error('SQL file required')

    lines = parse_file(args[0])

    db_urls = opt.db_urls.split(',')
    if not isinstance(db_urls, list):
        db_urls = list(db_urls)

    failed = False
    options = {'db_urls': db_urls}
    last_comment = ''
    for line in lines:
        passed, message = check_query(options, line)
        if not passed:
            failed = True
            print_message(message, line, last_comment)
        if line.startswith('-- '):
            last_comment = line
    exit(failed)


def exit(failed):
    sys.exit(255 if failed else 0)


def print_message(message, query, last_comment):
    print("FAILED - %s" % (message))
    print("-" * 70)
    print()
    print("Query:")
    print("%s" % query)
    if last_comment:
        print("Preceding SQL Comment:")
        print(last_comment)
