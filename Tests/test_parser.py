# -*- coding: utf-8 -*-
__author__ = 'Alex'

import unittest

from JSONx.parser import *
from JSONx.lexer import *
from JSONx.ast import *
import JSONxLoader


class TestParser(unittest.TestCase):
    tokens = [
        JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1, 0),
        JSONxToken(Type.NUMBER, '0', 1, 1),
        JSONxToken(Type.COMMA, ',', 1, 2),
        JSONxToken(Type.NUMBER, '1', 1, 3),
        JSONxToken(Type.RIGHT_SQUARE_BRACKET, ']', 1, 4),
        JSONxToken(Type.EOF, 'EOF', 1, 5)
    ]

    def test_skip(self):
        parser = Parser(TestParser.tokens)
        parser.skip()
        self.assertEqual(parser.position, 1)

    def test_peek(self):
        parser = Parser(TestParser.tokens)
        token = parser.peek()
        self.assertEqual(token, JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1, 0))

    def test_check(self):
        parser = Parser(TestParser.tokens)
        result = parser.check_type(Type.LEFT_SQUARE_BRACKET)
        cursor_position = parser.position
        self.assertEqual(result, True)
        self.assertEqual(cursor_position, 1)

        result = parser.check_type(Type.COMMA)
        cursor_position = parser.position
        self.assertEqual(result, False)
        self.assertEqual(cursor_position, 1)

    def test_ensure_type(self):
        parser = Parser(TestParser.tokens)
        node = parser.ensure_type(Type.LEFT_SQUARE_BRACKET, "'[' expected")
        self.assertEqual(node, JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1, 0))
        self.assertEqual(parser.position, 1)

        with self.assertRaisesRegexp(Exception, "']' expected"):
            parser.ensure_type(Type.RIGHT_SQUARE_BRACKET, "']' expected")
        self.assertEqual(parser.position, 1)

    def test_ensure(self):
        parser = Parser(TestParser.tokens)
        token = parser.ensure(lambda: JSONxToken(Type.LEFT_SQUARE_BRACKET, None, 0, 1), "'[' expected")
        self.assertEqual(token, JSONxToken(Type.LEFT_SQUARE_BRACKET, None, 0, 1))

    def test_attempt(self):
        parser = Parser(TestParser.tokens)
        token = parser.attempt(lambda: parser.get(Type.LEFT_SQUARE_BRACKET))
        self.assertEqual(token, JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1, 0))

        node = parser.attempt(lambda: None)
        self.assertEqual(node, None)

    def test_sequence(self):
        parser = Parser(TestParser.tokens)
        tokens = parser.sequence(lambda: parser.get(Type.LEFT_SQUARE_BRACKET),
                                 lambda: parser.get(Type.NUMBER))
        self.assertEqual(tokens, [JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1, 0), JSONxToken(Type.NUMBER, '0', 1, 1)])

        tokens = parser.sequence(lambda: parser.get(Type.LEFT_SQUARE_BRACKET),
                                 lambda: parser.get(Type.RIGHT_SQUARE_BRACKET))
        self.assertEqual(tokens, None)

    def test_repeat(self):
        parser = Parser(TestParser.tokens)
        parser.check_type(Type.LEFT_SQUARE_BRACKET)
        tokens = parser.repeat(lambda: parser.get(Type.NUMBER),
                               lambda: parser.get(Type.COMMA))
        self.assertEqual(tokens, [JSONxToken(Type.NUMBER, '0', 1, 1), JSONxToken(Type.NUMBER, '1', 1, 3)])


class TestJSONxParser(unittest.TestCase):
    def test_parse_keywords(self):
        parser = JSONxParser([JSONxToken(Type.KEYWORD, "true", 1, 0)])
        result = parser.parse_keyword()
        self.assertEqual(result, TrueNode(JSONxToken(Type.KEYWORD, "true", 1, 0)))

        parser = JSONxParser([JSONxToken(Type.KEYWORD, "false", 1, 0)])
        result = parser.parse_keyword()
        self.assertEqual(result, FalseNode(JSONxToken(Type.KEYWORD, "false", 1, 0)))

        parser = JSONxParser([JSONxToken(Type.KEYWORD, "null", 1, 0)])
        result = parser.parse_keyword()
        self.assertEqual(result, NullNode(JSONxToken(Type.KEYWORD, "null", 1, 0)))

    def test_parse_number(self):
        parser = JSONxParser([JSONxToken(Type.NUMBER, "123", 0, 2)])
        result = parser.parse_number()
        self.assertEqual(result, NumberNode(JSONxToken(Type.NUMBER, "123", 0, 2)))

    def test_parse_string(self):
        parser = JSONxParser([JSONxToken(Type.STRING, '', 0, 3)])
        result = parser.parse_string()
        self.assertEqual(result, StringNode(JSONxToken(Type.STRING, '', 0, 3)))

    def test_parse_array(self):
        parser = JSONxParser([JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 0, 1),
                              JSONxToken(Type.RIGHT_SQUARE_BRACKET, ']', 1, 2)])
        result = parser.parse_array()
        self.assertEqual(result, ArrayNode([]))

        parser = JSONxParser([JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 0, 1),
                              JSONxToken(Type.NUMBER, '0', 1, 2),
                              JSONxToken(Type.COMMA, ',', 2, 3),
                              JSONxToken(Type.NUMBER, '1', 3, 4),
                              JSONxToken(Type.RIGHT_SQUARE_BRACKET, ']', 2, 3)])
        result = parser.parse_array()
        self.assertEqual(result, ArrayNode([NumberNode(JSONxToken(Type.NUMBER, '0', 1, 2)),
                                            NumberNode(JSONxToken(Type.NUMBER, '1', 3, 4))]))

    def test_parse_object(self):
        parser = JSONxParser([JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0, 1),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 1, 2)])
        result = parser.parse_object()
        self.assertEqual(result, ObjectNode([]))

        parser = JSONxParser([JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0, 1),
                              JSONxToken(Type.STRING, 'key', 1, 5),
                              JSONxToken(Type.COLON, ':', 5, 6),
                              JSONxToken(Type.STRING, 'value', 6, 13),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13, 14)])
        result = parser.parse_object()
        self.assertEqual(result, ObjectNode([
            PairNode(StringNode(JSONxToken(Type.STRING, 'key', 1, 5)),
                     StringNode(JSONxToken(Type.STRING, 'value', 6, 13)))
        ]))

        parser = JSONxParser([JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0, 1),
                              JSONxToken(Type.STRING, 'key', 1, 5),
                              JSONxToken(Type.COLON, ':', 5, 6),
                              JSONxToken(Type.STRING, 'value', 6, 13),
                              JSONxToken(Type.COMMA, ',', 13, 14),
                              JSONxToken(Type.ID, 'key2', 14, 20),
                              JSONxToken(Type.COLON, ':', 20, 21),
                              JSONxToken(Type.STRING, 'value', 21, 28),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 28, 29)])
        result = parser.parse_object()
        self.assertEqual(result, ObjectNode([
            PairNode(StringNode(JSONxToken(Type.STRING, 'key', 1, 5)),
                     StringNode(JSONxToken(Type.STRING, 'value', 6, 13))),
            PairNode(StringNode(JSONxToken(Type.ID, 'key2', 14, 20)),
                     StringNode(JSONxToken(Type.STRING, 'value', 21, 28)))
        ]))

    def test_parse_reference(self):
        parser = JSONxParser([JSONxToken(Type.DOLLAR, '$', 0, 1),
                              JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0, 1),
                              JSONxToken(Type.STRING, 'file.xc', 1, 5),
                              JSONxToken(Type.COLON, ':', 5, 6),
                              JSONxToken(Type.STRING, '.path', 6, 13),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13, 14)])
        result = parser.parse_value()
        self.assertEqual(result, ReferenceNode((
            StringNode(JSONxToken(Type.STRING, 'file.xc', 1, 5)), StringNode(JSONxToken(Type.STRING, '.path', 6, 13))
        )))

        parser = JSONxParser([JSONxToken(Type.DOLLAR, '$', 0, 1),
                              JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0, 1),
                              JSONxToken(Type.STRING, '.path', 6, 13),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13, 14)])
        result = parser.parse_value()
        self.assertEqual(result, ReferenceNode((
            None, StringNode(JSONxToken(Type.STRING, '.path', 6, 13))
        )))

    def test_parse_statement(self):
        parser = JSONxParser([JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0, 1),
                              JSONxToken(Type.STRING, 'key', 1, 5),
                              JSONxToken(Type.COLON, ':', 5, 6),
                              JSONxToken(Type.KEYWORD, 'null', 6, 12),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13, 14),
                              JSONxToken(Type.EOF, 'EOF', 14, 14)])
        result = parser.parse_statement()
        self.assertEqual(result, JSONxTree(ObjectNode([
            PairNode(StringNode(JSONxToken(Type.STRING, 'key', 1, 5)),
                     NullNode(JSONxToken(Type.KEYWORD, 'null', 6, 12)))
        ])))

        parser = JSONxParser([JSONxToken(Type.EOF, 'EOF', 0, 0)])
        self.assertEqual(parser.parse_statement(), JSONxTree(None))

    def test_ref(self):
        result = JSONxLoader.load('config/ref.xc')
        self.assertEqual(result, {
            "def": {
                "damageText": "Hello kitty",
                "damageMessage": "New message"
            },
            "damageTextPlayer": {
                "damageText": "Hello kitty",
                "damageMessage": "New message"
            },
            "anotherExample": "Hello kitty"
        })

    def test_unicode(self):
        result = JSONxLoader.load('config/ru.xc')
        self.assertEqual(result['locale']['Not ready'], u'Не готов')

    def test_trailing_commas(self):
        result = JSONxLoader.load('config/trailing_comma.xc')
        self.assertTrue(result)

    def test_default(self):
        result = JSONxLoader.load('config/xvm_default.xc')
        self.assertEqual(result['definition']['description'], 'Default settings for XVM')

    def test_seriych(self):
        result = JSONxLoader.load('config/xvm_seriych.xc')
        self.assertEqual(result['definition']['description'], 'Config seriych 9.6.0')

    def test_Hawk1983x(self):
        result = JSONxLoader.load('config/xvm_Hawk1983x_newformat.xc')
        self.assertEqual(result['definition']['author'], 'Hawk1983x')
