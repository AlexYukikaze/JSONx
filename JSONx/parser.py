__author__ = 'Alex'

from lexer import *
from ast import *
import exception


class Parser(object):
    def __init__(self, tokens):
        self.tokens = tokens
        self.position = 0
        self.length = len(tokens)

    def error(self, message, *args):
        line, col = self.token.get_line_col()
        raise exception.ParserException(message.format(*args), (line, col))

    @property
    def token(self):
        """
        :rtype : Token
        """
        return self.tokens[self.position] if self.position < self.length else None

    def expect(self, expected_type):
        """
        :rtype : Token | None
        """
        token = self.tokens[self.position] if self.position < self.length else None
        if not token or token.type != expected_type:
            return None
        self.position += 1
        return token

    def ensure(self, expected_type, message, *args):
        """
        :rtype : Token | None
        """
        token = self.tokens[self.position] if self.position < self.length else None
        if not token or token.type != expected_type:
            self.error(message, *args)
        self.position += 1
        return token


class JSONxParser(Parser):
    def parse_keyword(self):
        token = self.expect(Type.KEYWORD)
        if not token:
            return None
        if token.value == 'true':
            return TrueNode(token)
        if token.value == 'false':
            return FalseNode(token)
        if token.value == 'null':
            return NullNode(token)

    def parse_number(self):
        token = self.expect(Type.NUMBER)
        if token:
            return NumberNode(token)

    def parse_string(self):
        token = self.expect(Type.STRING)
        if token:
            return StringNode(token)

    def parse_object(self):
        left_bracket = self.expect(Type.LEFT_CURLY_BRACKET)
        if not left_bracket:
            return None
        right_bracket = self.expect(Type.RIGHT_CURLY_BRACKET)
        if right_bracket:
            return ObjectNode([])
        pairs = self.parse_pairs()
        self.ensure(Type.RIGHT_CURLY_BRACKET, 'expected "}}", got "{}"', self.token)
        return ObjectNode(pairs)

    def parse_pairs(self):
        pairs = []
        while True:
            if pairs and not self.expect(Type.COMMA):
                break
            pair = self.parse_pair()
            if not pair:
                self.error('expected <pair>, got "{}"', self.token)
            pairs += pair,
        return pairs

    def parse_pair(self):
        key = self.parse_string()
        if not key:
            return None
        self.ensure(Type.COLON, 'expected ":", got "{}"', self.token)
        value = self.parse_value()
        if not value:
            self.error('expected <value>, got "{}"', self.token)
        return PairNode(key, value)

    def parse_array(self):
        left_bracket = self.expect(Type.LEFT_SQUARE_BRACKET)
        if not left_bracket:
            return None
        right_bracket = self.expect(Type.RIGHT_SQUARE_BRACKET)
        if right_bracket:
            return ArrayNode([])
        elements = self.parse_elements()
        self.ensure(Type.RIGHT_SQUARE_BRACKET, 'expected "]", got "{}"', self.token)
        return ArrayNode(elements)

    def parse_elements(self):
        elements = []
        while True:
            if elements and not self.expect(Type.COMMA):
                break
            value = self.parse_value()
            if not value:
                self.error('expected <value>, got "{}"', self.token)
            elements += value,
        return elements

    def parse_reference(self):
        if not self.expect(Type.DOLLAR):
            return None
        self.ensure(Type.LEFT_CURLY_BRACKET, 'Bad reference: <{{> expected, got {}', self.token)
        object_path = NullNode(None)
        file_path = self.parse_string()
        if self.expect(Type.COLON):
            object_path = file_path
            file_path = self.parse_string()
        if not file_path:
            self.error('Bad reference: <string> expected, got {}', self.token)
        self.ensure(Type.RIGHT_CURLY_BRACKET, 'Bad reference: <}}> expected, got', self.token)
        return ReferenceNode(PairNode(object_path, file_path))

    def parse_value(self):
        token = self.token
        if token.type == Type.LEFT_CURLY_BRACKET:
            return self.parse_object()
        if token.type == Type.LEFT_SQUARE_BRACKET:
            return self.parse_array()
        if token.type == Type.STRING:
            return self.parse_string()
        if token.type == Type.NUMBER:
            return self.parse_number()
        if token.type == Type.KEYWORD:
            return self.parse_keyword()
        if token.type == Type.DOLLAR:
            return self.parse_reference()

    def parse(self):
        value = self.parse_value()
        self.ensure(Type.EOF, 'Bad file: <EOF> expected, got "{}"', self.token)
        return value


def parse(tokens):
    parser = JSONxParser(tokens)
    return parser.parse()
