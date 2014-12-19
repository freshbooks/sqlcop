import sys
import sqlparse
from .checks import CrossJoinCheck


def parse_file(filename):
    return open(filename, 'r').readlines()


CHECKS = (
    (CrossJoinCheck, 'query contains cross join'),
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
    argv = sys.argv
    try:
        queries = parse_file(argv[1])
    except IndexError:
        raise Exception('Filename required')
    failed = False
    options = {}  # TODO
    for query in queries:
        passed, message = check_query(options, query)
        if not passed:
            failed = True
            print_message(message, query)
    sys.exit(255 if failed else 0)


def print_message(message, query):
    print "FAILED - %s" % (message)
    print "-" * 70
    print
    print "Query:"
    print "%s" % query
