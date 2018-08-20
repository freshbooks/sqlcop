from sqlcop.cli import main
from mock import Mock, patch


def build_fixture_mock(filename):
    mock_optionParser = Mock()
    opts = Mock()
    opts.db_urls = ','
    args = [filename]
    mock_optionParser.parse_args.return_value = (opts, args)
    return mock_optionParser


example_query = 'SELECT count(*) AS count_1  FROM (SELECT (SELECT thread.upd' \
        'ated_at  FROM thread  WHERE thread.id = project_thread.thread_id) A' \
        'S anon_2, project_thread.project_id AS project_thread_project_id, p' \
        'roject_thread.thread_id AS project_thread_thread_id, project_thread' \
        '.message AS project_thread_message, project_thread.created_at AS pr' \
        'oject_thread_created_at, project_thread.created_by AS project_threa' \
        'd_created_by  FROM project_thread  WHERE %s = project_thread.projec' \
        't_id ORDER BY anon_2 DESC) AS anon_1\n'


class TestCli(object):
    @patch('optparse.OptionParser')
    @patch('sqlcop.cli.print_message')
    @patch('sqlcop.cli.exit')
    def test_output_without_comment(
            self,
            exit_patch,
            print_message_patch,
            option_parser_patch):
        option_parser_patch.return_value = build_fixture_mock(
                'tests/fixtures/example.sql')

        assert not exit_patch.called
        assert not print_message_patch.called

        main()
        print_message_patch.assert_called_with(
                'query contains a count with an order by clause',
                example_query,
                '')
        exit_patch.assert_called_with(True)

    @patch('optparse.OptionParser')
    @patch('sqlcop.cli.print_message')
    @patch('sqlcop.cli.exit')
    def test_output_with_comment(
            self,
            exit_patch,
            print_message_patch,
            option_parser_patch):
        option_parser_patch.return_value = build_fixture_mock(
                'tests/fixtures/example_with_comment.sql')

        assert not exit_patch.called
        assert not print_message_patch.called

        main()
        print_message_patch.assert_called_with(
            'query contains a count with an order by clause',
            example_query,
            '-- test_create_thread_on_project_1 '
            '(test.unit.models.test_project.TestProjectModel)\n')
        exit_patch.assert_called_with(True)
