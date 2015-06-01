__author__ = 'Alex'

import unittest
import JSONx
from JSONx.parser import *
from JSONx.lexer import *
from JSONx.ast import *


class TestParser(unittest.TestCase):
    tokens = [
        JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1),
        JSONxToken(Type.NUMBER, '0', 1),
        JSONxToken(Type.COMMA, ',', 1),
        JSONxToken(Type.NUMBER, '1', 1),
        JSONxToken(Type.RIGHT_SQUARE_BRACKET, ']', 1),
        JSONxToken(Type.EOF, 'EOF', 1)
    ]

    def test_peek(self):
        parser = Parser(TestParser.tokens)
        token = parser.token
        self.assertEqual(token, JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1))

    def test_ensure(self):
        parser = Parser(TestParser.tokens)
        node = parser.ensure(Type.LEFT_SQUARE_BRACKET, "'[' expected")
        self.assertEqual(node, JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 1))
        self.assertEqual(parser.position, 1)

        with self.assertRaisesRegexp(Exception, "']' expected"):
            parser.ensure(Type.RIGHT_SQUARE_BRACKET, "']' expected")
        self.assertEqual(parser.position, 1)


class TestJSONxParser(unittest.TestCase):
    def test_parse_keywords(self):
        parser = JSONxParser([JSONxToken(Type.KEYWORD, "true", 1)])
        result = parser.parse_keyword()
        self.assertEqual(result, TrueNode())

        parser = JSONxParser([JSONxToken(Type.KEYWORD, "false", 1)])
        result = parser.parse_keyword()
        self.assertEqual(result, FalseNode())

        parser = JSONxParser([JSONxToken(Type.KEYWORD, "null", 1)])
        result = parser.parse_keyword()
        self.assertEqual(result, NullNode())

    def test_parse_number(self):
        parser = JSONxParser([JSONxToken(Type.NUMBER, "123", 0)])
        result = parser.parse_number()
        self.assertEqual(result, NumberNode(123))

    def test_parse_string(self):
        parser = JSONxParser([JSONxToken(Type.STRING, '', 0)])
        result = parser.parse_string()
        self.assertEqual(result, StringNode(''))

        parser = JSONxParser([JSONxToken(Type.STRING, 'value', 0)])
        result = parser.parse_string()
        self.assertEqual(result, StringNode('value'))

    def test_parse_array(self):
        parser = JSONxParser([JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 0),
                              JSONxToken(Type.RIGHT_SQUARE_BRACKET, ']', 1)])
        result = parser.parse_array()
        self.assertEqual(result, ArrayNode([]))

        parser = JSONxParser([JSONxToken(Type.LEFT_SQUARE_BRACKET, '[', 0),
                              JSONxToken(Type.NUMBER, '0', 1),
                              JSONxToken(Type.COMMA, ',', 2),
                              JSONxToken(Type.NUMBER, '1', 3),
                              JSONxToken(Type.RIGHT_SQUARE_BRACKET, ']', 2)])
        result = parser.parse_array()
        self.assertEqual(result, ArrayNode([NumberNode(0),
                                            NumberNode(1)]))

    def test_parse_object(self):
        parser = JSONxParser([JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 1)])
        result = parser.parse_object()
        self.assertEqual(result, ObjectNode([]))

        parser = JSONxParser([JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0),
                              JSONxToken(Type.STRING, 'key', 1),
                              JSONxToken(Type.COLON, ':', 5),
                              JSONxToken(Type.STRING, 'value', 6),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13)])
        result = parser.parse_object()
        self.assertEqual(result, ObjectNode([
            PairNode(StringNode('key'),
                     StringNode('value'))
        ]))

    def test_parse_reference(self):
        parser = JSONxParser([JSONxToken(Type.DOLLAR, '$', 0),
                              JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0),
                              JSONxToken(Type.STRING, 'file.xc', 1),
                              JSONxToken(Type.COLON, ':', 5),
                              JSONxToken(Type.STRING, '.path', 6),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13)])
        result = parser.parse_reference()
        self.assertEqual(result, ReferenceNode(PairNode(
            StringNode('file.xc'), StringNode('.path')
        )))

        parser = JSONxParser([JSONxToken(Type.DOLLAR, '$', 0),
                              JSONxToken(Type.LEFT_CURLY_BRACKET, '{', 0),
                              JSONxToken(Type.STRING, '.path', 6),
                              JSONxToken(Type.RIGHT_CURLY_BRACKET, '}', 13)])
        result = parser.parse_value()
        self.assertEqual(result, ReferenceNode(PairNode(
            NullNode(), StringNode('.path')
        )))

    def test_parse(self):
        result = JSONx.parse('{"array": [0, 1, 2], "string": "hello world"}')
        self.assertEqual(result, {"array": [0, 1, 2], "string": "hello world"})

    def test_keyword(self):
        true = JSONx.parse('true')
        false = JSONx.parse('false')
        null = JSONx.parse('null')
        self.assertEqual(true, True)
        self.assertEqual(false, False)
        self.assertEqual(null, None)

    def test_scalar(self):
        number = JSONx.parse('+1.23E-1')
        string = JSONx.parse('"value"')
        self.assertEqual(number, 0.123)
        self.assertEqual(string, 'value')

    def test_array(self):
        array = JSONx.parse('[ 123, "string", [ 0, 1 ], { "key": "value" }, true, false, null ]')
        self.assertEqual(array, [123, 'string', [0, 1], {'key': 'value'}, True, False, None])

    def test_object(self):
        obj = JSONx.parse('{ "string_key": "value", "number_key": 3.14, "array_key": [0, 1], "object_key": {} }')
        self.assertEqual(obj, {"string_key": "value", "number_key": 3.14, "array_key": [0, 1], "object_key": {}})
