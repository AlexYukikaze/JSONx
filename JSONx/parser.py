__author__ = 'Alex'

import lexer
import ast
import exception
from functools import partial


class Parser(object):
    def __init__(self, tokens):
        self.position = 0
        self.tokens = tokens

    def error(self, message, *args):
        token = self.peek()
        raise exception.ParserException(message.format(args, current=token), (token.line, token.position))

    def peek(self):
        return self.tokens[self.position]

    def skip(self, count=1):
        self.position += count

    def parse_type(self, token_type):
        return partial(self.consume, token_type)

    def check_type(self, token_type):
        token = self.peek()
        if token.type != token_type:
            return False
        self.skip()
        return True

    def ensure_type(self, token_type, message, *args):
        token = self.peek()
        if token.type != token_type:
            self.error(message, args)
        self.skip()
        return token

    def ensure(self, func, message, *args):
        result = func()
        if not result:
            self.error(message, args)
        return result

    def attempt(self, func):
        backup_pos = self.position
        result = func()
        if not result:
            self.position = backup_pos
        return result

    def consume(self, token_type):
        token = self.peek()
        if token.type != token_type:
            return None
        self.skip()
        return token

    def sequence(self, *parser_funcs):
        result = []
        for parser in parser_funcs:
            value = self.attempt(parser)
            if not value:
                return None
            result.append(value)
        return result

    def repeat(self, parser_func, separator_parser):
        result = []
        val = parser_func()
        while val:
            result.append(val)
            val = self.sequence(separator_parser, parser_func)
            if val:
                val = val[1]
        return result


class JSONxParser(Parser):
    def parse_keyword(self):
        token = self.consume(lexer.Type.KEYWORD)
        if not token:
            return None
        if token.value == 'true':
            return ast.TrueNode(token)
        if token.value == 'false':
            return ast.FalseNode(token)
        if token.value == 'null':
            return ast.NullNode(token)

    def parse_number(self):
        token = self.consume(lexer.Type.NUMBER)
        if not token:
            return None
        return ast.NumberNode(token)

    def parse_string(self):
        token = self.consume(lexer.Type.STRING)
        if not token:
            return None
        return ast.StringNode(token)

    def parse_identifier(self):
        token = self.consume(lexer.Type.ID)
        if not token:
            return None
        return ast.StringNode(token)

    def parse_array(self):
        if not self.check_type(lexer.Type.LEFT_SQUARE_BRACKET):
            return None
        if self.check_type(lexer.Type.RIGHT_SQUARE_BRACKET):
            return ast.ArrayNode([])
        value = self.repeat(self.parse_value, self.parse_type(lexer.Type.COMMA))
        if not value:
            self.error("Bad array: <value> expected, got '{current.value}'")
        self.ensure_type(lexer.Type.RIGHT_SQUARE_BRACKET, "Bad array: <]> expected, got '{current.value}'")
        return ast.ArrayNode(value)

    def parse_object(self):
        if not self.check_type(lexer.Type.LEFT_CURLY_BRACKET):
            return None
        if self.check_type(lexer.Type.RIGHT_CURLY_BRACKET):
            return ast.ObjectNode([])
        pairs = self.repeat(self.parse_pair, self.parse_type(lexer.Type.COMMA))
        self.ensure_type(lexer.Type.RIGHT_CURLY_BRACKET, "Bad object: <}}> expected, got '{current.value}'")
        return ast.ObjectNode(pairs)

    def parse_pair(self):
        key = self.attempt(self.parse_string) or \
              self.ensure(self.parse_identifier, "Bad pair: <key> expected, got '{current.value}'")
        if not self.check_type(lexer.Type.COLON):
            return None
        value = self.ensure(self.parse_value, "Bad pair: <value> expected, got '{current.value}'")
        return ast.PairNode(key, value)

    def parse_reference(self):
        def parse_body():
            path = self.attempt(self.parse_string)
            return ast.PairNode(ast.NullNode(None), path)

        if not self.check_type(lexer.Type.DOLLAR):
            return None
        self.ensure_type(lexer.Type.LEFT_CURLY_BRACKET, "Bad reference: <{{> expected, got '{current.value}'")
        pair = self.attempt(self.parse_pair) or \
               self.ensure(parse_body, "Bad reference: <reference_body> expected, got '{current.value}'")
        self.ensure_type(lexer.Type.RIGHT_CURLY_BRACKET, "Bad reference: <}}> expected, got '{current.value}'")
        return ast.ReferenceNode(pair)

    def parse_value(self):
        tok_type = self.peek().type
        if tok_type == lexer.Type.LEFT_SQUARE_BRACKET:
            return self.parse_array()
        elif tok_type == lexer.Type.LEFT_CURLY_BRACKET:
            return self.parse_object()
        elif tok_type == lexer.Type.KEYWORD:
            return self.parse_keyword()
        elif tok_type == lexer.Type.NUMBER:
            return self.parse_number()
        elif tok_type == lexer.Type.DOLLAR:
            return self.parse_reference()
        elif tok_type == lexer.Type.STRING:
            return self.parse_string()

    def parse(self):
        return self.ensure(self.parse_value, "Bad source: <value> expected, got '{current.value}'")


def parse(tokens):
    parser = JSONxParser(tokens)
    return parser.parse()
