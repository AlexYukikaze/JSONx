__author__ = 'Alex'

import unittest
from JSONx.lexer import *


class TestLexer(unittest.TestCase):

    def assert_list(self, source, expected_types):
        tokens = tokenize(source)
        token_types = map(lambda _: _.type, tokens)
        self.assertEqual(token_types, expected_types)

    def assert_token(self, source, expected_type, expected_value):
        tokens = map(lambda _: (_.type, _.value), tokenize(source))
        self.assertTrue(tokens)
        self.assertEqual(tokens[0], (expected_type, expected_value))

    def test_empty(self):
        self.assert_list("", [Type.EOF])

    def test_numbers(self):
        self.assert_token("0", Type.NUMBER, '0')
        self.assert_token("-1", Type.NUMBER, '-1')
        self.assert_token("123", Type.NUMBER, '123')
        self.assert_token("3.14", Type.NUMBER, '3.14')
        self.assert_token("3.14e0", Type.NUMBER, '3.14e0')
        self.assert_token("1e-1", Type.NUMBER, '1e-1')

    def test_keywords(self):
        self.assert_token("true", Type.KEYWORD, 'true')
        self.assert_token("false", Type.KEYWORD, 'false')
        self.assert_token("null", Type.KEYWORD, 'null')

    def test_specials(self):
        self.assert_token("{", Type.LEFT_CURLY_BRACKET, '{')
        self.assert_token("}", Type.RIGHT_CURLY_BRACKET, '}')
        self.assert_token("[", Type.LEFT_SQUARE_BRACKET, '[')
        self.assert_token("]", Type.RIGHT_SQUARE_BRACKET, ']')
        self.assert_token(",", Type.COMMA, ',')
        self.assert_token(":", Type.COLON, ':')
        self.assert_token("$", Type.DOLLAR, '$')

    def test_whitespaces(self):
        self.assert_token(" -1", Type.NUMBER, '-1')      # one space
        self.assert_token("   -1", Type.NUMBER, '-1')    # many spaces
        self.assert_token("\n-1", Type.NUMBER, '-1')     # new line
        self.assert_token("\t-1", Type.NUMBER, '-1')     # tabulation
        self.assert_token("\t \n-1", Type.NUMBER, '-1')  # mix

    def test_comments(self):
        self.assert_token("// 123\n-1", Type.NUMBER, '-1')        # singleline comment
        self.assert_token("/* 123 */-1", Type.NUMBER, '-1')       # multiline comment
        self.assert_token("/* // 123\n */-1", Type.NUMBER, '-1')  # singleline in multiline

    def test_string(self):
        self.assert_token(r'"\""', Type.STRING, u'"')
        self.assert_token(r'"\n"', Type.STRING, u'\n')
        self.assert_token(r'"\r\n"', Type.STRING, u'\r\n')
        self.assert_token(r'"\uFFFF"', Type.STRING, u'\uFFFF')
        self.assert_token(r'"\xFF"', Type.STRING, u'\xFF')

    def test_sequence(self):
        self.assert_list("{}", [Type.LEFT_CURLY_BRACKET, Type.RIGHT_CURLY_BRACKET, Type.EOF])
        self.assert_list("1,2", [Type.NUMBER, Type.COMMA, Type.NUMBER, Type.EOF])
