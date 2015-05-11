__author__ = 'Alex'

import unittest
from JSONx.lexer import *


class TestLexer(unittest.TestCase):

    def assert_list(self, source, expected_types):
        tokens = tokenize(source)
        token_types = map(lambda _: _.type, tokens)
        self.assertEqual(token_types, expected_types)

    def test_empty(self):
        self.assert_list("", [Type.EOF])

    def test_sequence(self):
        self.assert_list("{}", [Type.LEFT_CURLY_BRACKET, Type.RIGHT_CURLY_BRACKET, Type.EOF])
        self.assert_list("1,2", [Type.NUMBER, Type.COMMA, Type.NUMBER, Type.EOF])

    def test_string(self):
        self.assert_list('"Hello \\" world"', [Type.STRING, Type.EOF])
        self.assert_list('"Hello \\n world"', [Type.STRING, Type.EOF])
        self.assert_list('"Hello \\uABCD world"', [Type.STRING, Type.EOF])
        self.assert_list('"Hello \\xFF world"', [Type.STRING, Type.EOF])

        tokens = tokenize('"\\uFFFF" "\\xFF"')
        self.assertEqual(tokens[0].value, u'\uFFFF')
        self.assertEqual(tokens[1].value, u'\xFF')