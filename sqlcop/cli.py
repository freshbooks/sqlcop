import sys
import sqlparse
from .checks import has_cross_join


def parse_file(filename):
    import json
    with open(filename, 'r') as fh:
        return json.load(fh)


CHECKS = (
    (has_cross_join, 'query contains cross join'),
)


def check_query(el):
    """
    Run each of the defined checks on a query.
    """
    stmt = sqlparse.parse(el)
    for check in CHECKS:
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
    for query, tests in queries.iteritems():
        passed, message = check_query(query)
        if not passed:
            failed = True
            print_message(message, tests, query)
    sys.exit(255 if failed else 0)


def print_message(message, tests, query):
    print "FAILED - %s" % (message)
    print "-----------------------------------------------------------------"
    print "Test Methods:"
    print "%s" % "\n".join(tests)
    print
    print "Query:"
    print "%s" % query
