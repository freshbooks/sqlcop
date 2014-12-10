import sys
import sqlparse
import re
from collections import defaultdict
from evolve.connection import Connection
# from evolve.model import init_model
# from evolve.model.meta import get_primary_keys
from sqlalchemy.dialects.mysql.base import RESERVED_WORDS
# from test import sys1_admin_credentials
# from test import get_app_config


for key in sqlparse.keywords.KEYWORDS.keys():
    if key not in RESERVED_WORDS:
        del sqlparse.keywords.KEYWORDS[key]


try:
    # Wire up the database connection, as we cannot
    # get mappers without a database connection.
    # app_config = get_app_config()
    # init_model(app_config['fresh-alchemy'])
    pass
except:
    # This fails in the test suite as nosetests
    # bootstraps the db connection for us.
    pass


def camelize(name):
    return re.sub(r"(?:^|_)(.)", lambda m: m.group(1).upper(), name)


def parse_file(filename):
    """
    Parse the captured queries and test names into a structured pile of
    data.
    """
    output = []
    with open(filename, 'r') as fh:
        lines = fh.readlines()

    test_names = []
    in_query = False
    query = []
    for line in lines:
        # Blank line - with state
        if not len(line.strip()) and len(query):
            output.append({'query': ''.join(query), 'tests': test_names})
            in_query = False
            query = []
            test_names = []

        # Blank line - no state
        if not len(line.strip()):
            continue

        if line.startswith('SELECT'):
            in_query = True
        if in_query:
            query.append(line)
        else:
            test_names.append(line)

    # Catch any leftovers
    if len(query):
        output.append({'query': ''.join(query), 'tests': test_names})

    return output


def has_cross_join(stmt):
    """
    Check for cross joins in queries.
    Cross joins are *always* wrong in production code at FreshBooks.
    """
    in_from = False
    where_clause = False
    tables = []
    for i, tok in enumerate(stmt.tokens):
        if tok.match(sqlparse.tokens.Keyword, 'FROM'):
            in_from = True

        if (isinstance(tok, sqlparse.sql.Where) or
                tok.match(sqlparse.tokens.Keyword.DML, 'SELECT') or
                tok.match(sqlparse.tokens.Keyword, 'INNER JOIN') or
                tok.match(sqlparse.tokens.Keyword, 'LEFT OUTER JOIN')):
            in_from = False

        # If we are in the FROM section of a query we could find cross
        # joined tables.
        if in_from:
            # A list of identifiers is bad - probably a cross join.
            if isinstance(tok, sqlparse.sql.IdentifierList):
                tables += tok.get_identifiers()

        # Collect conditions and see if some primary keys
        # are missing. If all the primary keys for all the
        # tables are in the where condition, the query should be ok.
        if (isinstance(tok, sqlparse.sql.Where)):
            where_clause = tok
    if where_clause and len(tables) > 1:
        tables = remove_joined_tables(tables, where_clause)
    if len(tables) > 1:
        return True
    return False


def remove_joined_tables(tables, where_clause):
    table_names = [tok.get_name() for tok in tables]
    join_columns = []
    operator = 'AND'

    # Find any join conditions that reference the cross joined tables.
    for i, tok in enumerate(where_clause.tokens):
        if tok.match(sqlparse.tokens.Keyword, '.*', True):
            operator = tok.value

        if isinstance(tok, sqlparse.sql.Comparison) and operator == 'AND':
            join_columns += extract_join_columns(table_names, tok)

    # Index columns by table so we can check mappers
    column_map = defaultdict(list)
    for table, column in join_columns:
        column_map[table].append(column)

    primary_keys = get_table_keys(column_map)

    # Compare join keys with primary keys.
    # Return the list of tables that do not have all their primary key
    # columns participating in the join.
    for table in column_map:
        if set(primary_keys[table]) == set(column_map[table]):
            table_names.remove(table)
    return table_names


def extract_join_columns(tables, comparison):
    """
    Pull out tuples of field identifiers from a sqlparse.sql.IdentifierList
    """
    columns = []
    for tok in comparison.tokens:
        if (isinstance(tok, sqlparse.sql.Identifier) and
                tok.get_parent_name() in tables):
            column = (tok.get_parent_name(), tok.get_name())
            columns.append(column)
    return columns


def get_table_keys(column_map):
    """
    Grab the primary keys for each table in the join
    """
    connection = Connection(sys1_admin_credentials)
    primary_keys = {}
    for table in column_map:
        class_name = camelize(table)
        mapper = getattr(connection.shard, class_name)
        primary_keys[table] = get_primary_keys(mapper.__table__)
    return primary_keys


CHECKS = (
    (has_cross_join, 'query contains cross join'),
)


def check_query(el):
    """
    Run each of the defined checks on a query.
    """
    stmt = sqlparse.parse(el['query'])
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
    for el in queries:
        passed, message = check_query(el)
        if not passed:
            failed = True
            print_message(message, el)
    sys.exit(255 if failed else 0)


def print_message(message, el):
    print "FAILED - %s" % (message)
    print "-----------------------------------------------------------------"
    print "Test Methods:"
    print "%s" % "\n".join(el['tests'])
    print "Query:"
    print "%s" % el['query']
