__author__ = 'Alex'

import lexer
import ast
import exception


class Parser(object):
    def __init__(self, tokens):
        self.position = 0
        self.tokens = tokens
        self.count = len(tokens)

    def error(self, message, *args):
        token = self.peek()
        raise exception.ParserException(message.format(args), (token.line, token.position))

    def peek(self):
        pos = min(self.position, self.count - 1)
        return self.tokens[pos]

    def skip(self, count=1):
        self.position = min(self.position + count, self.count - 1)

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
        if result is None:
            self.error(message, args)
        return result

    def attempt(self, func):
        backup_pos = self.position
        result = func()
        if result is None:
            self.position = backup_pos
        return result

    def get(self, token_type):
        token = self.peek()
        if token.type != token_type:
            return None
        self.skip()
        return token

    def sequence(self, *parser_funcs):
        result = []
        for parser in parser_funcs:
            value = self.attempt(parser)
            if value is None:
                return None
            result.append(value)
        return result

    def repeat(self, parser_func, separator_parser):
        result = []
        val = parser_func()
        while val is not None:
            result.append(val)
            val = self.sequence(separator_parser, parser_func)
            if val is not None:
                val = val[1]
        return result


class JSONxParser(Parser):
    def parse_keyword(self):
        token = self.get(lexer.Type.KEYWORD)
        if token is None:
            return None
        if token.value == 'true':
            return ast.TrueNode(token)
        if token.value == 'false':
            return ast.FalseNode(token)
        if token.value == 'null':
            return ast.NullNode(token)

    def parse_number(self):
        token = self.get(lexer.Type.NUMBER)
        if token is None:
            return None
        return ast.NumberNode(token)

    def parse_string(self):
        token = self.get(lexer.Type.STRING)
        if token is None:
            return None
        return ast.StringNode(token)

    def parse_identifier(self):
        token = self.get(lexer.Type.ID)
        if token is None:
            return None
        return ast.StringNode(token)

    def parse_array(self):
        if not self.check_type(lexer.Type.LEFT_SQUARE_BRACKET):
            return None
        result = []
        if self.check_type(lexer.Type.RIGHT_SQUARE_BRACKET):
            return ast.ArrayNode(result)
        value = self.repeat(self.parse_value, lambda: self.get(lexer.Type.COMMA))
        if value:
            result = value
        self.ensure_type(lexer.Type.RIGHT_SQUARE_BRACKET, "Bad array")
        return ast.ArrayNode(result)

    def parse_object(self):
        if not self.check_type(lexer.Type.LEFT_CURLY_BRACKET):
            return None
        if self.check_type(lexer.Type.RIGHT_CURLY_BRACKET):
            return ast.ObjectNode([])
        pairs = self.repeat(lambda: self.attempt(self.parse_pair), lambda: self.get(lexer.Type.COMMA))
        self.ensure_type(lexer.Type.RIGHT_CURLY_BRACKET, "Bad object")
        return ast.ObjectNode(pairs)

    def parse_pair(self):
        key = self.attempt(self.parse_string) or \
              self.ensure(self.parse_identifier, "Bad key. String or identifier expected")
        if not self.check_type(lexer.Type.COLON):
            return None
        value = self.ensure(self.parse_value, "Bad key:value pair. Value expected")
        return ast.PairNode(key, value)

    def parse_reference(self):
        def parse_body():
            path = self.attempt(self.parse_string)
            return ast.PairNode(ast.NullNode(None), path)

        if not self.check_type(lexer.Type.DOLLAR):
            return None
        self.ensure_type(lexer.Type.LEFT_CURLY_BRACKET, "'$' symbol found but '{' missing")
        pair = self.attempt(self.parse_pair) or \
               self.ensure(parse_body, "Bad reference. Body not found")
        self.ensure_type(lexer.Type.RIGHT_CURLY_BRACKET, "Bad reference. '}' missing")
        return ast.ReferenceNode(pair)

    def parse_value(self):
        return self.attempt(self.parse_keyword) or \
               self.attempt(self.parse_number) or \
               self.attempt(self.parse_string) or \
               self.attempt(self.parse_reference) or \
               self.attempt(self.parse_array) or \
               self.ensure(self.parse_object, "Bad value. Expected: "
                                              "True | False | Null | Number | String | Reference | Array | Object")

    def parse_statement(self):
        value = self.attempt(self.parse_value)
        self.ensure_type(lexer.Type.EOF, "End of file expected")
        return ast.JSONxTree(value)


def parse(tokens):
    parser = JSONxParser(tokens)
    return parser.parse_statement()
