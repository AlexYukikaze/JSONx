__author__ = 'Alex'

import re
import exception
import utils


class Type(object):
    IGNORE = None
    EOF = 'EOF'
    LEFT_CURLY_BRACKET = 'LEFT_CURLY_BRACKET'
    RIGHT_CURLY_BRACKET = 'RIGHT_CURLY_BRACKET'
    LEFT_SQUARE_BRACKET = 'LEFT_SQUARE_BRACKET'
    RIGHT_SQUARE_BRACKET = 'RIGHT_SQUARE_BRACKET'
    DOLLAR = 'DOLLAR'
    COLON = 'COLON'
    COMMA = 'COMMA'
    KEYWORD = 'KEYWORD'
    STRING = 'STRING'
    NUMBER = 'NUMBER'
    ID = 'ID'


class JSONxToken(object):
    def __init__(self, token_type, value, line, pos):
        self.type = token_type
        self.value = value
        self.line = line
        self.position = pos

    def __eq__(self, other):
        if not isinstance(other, JSONxToken):
            return False
        return self.type == other.type and \
               self.value == other.value and \
               self.line == other.line and \
               self.position == other.position

    def __str__(self):
        return 'JSONxToken(type={})>'.format(self.type)

    def __repr__(self):
        return 'JSONxToken(type={type}  value={value} line={line} pos={position})>'.format(**self.__dict__)


class JSONxLexer(object):
    def __init__(self, source):
        self.source = source
        self.length = len(source)
        self.position = 0
        self.line = 1
        self.parser_regex = None
        self.groups = {}

    def register_regex_pattern(self, *patterns):
        regex_parts = []
        counter = 0
        for args in patterns:
            pattern, tag, handler = (args[0], args[1], args[2]) if len(args) == 3 else (args[0], args[1], None)
            group_name = 'GROUP_{0}_{1}'.format(counter, tag)
            self.groups[group_name] = tag, handler
            regex_parts.append('(?P<{0}>{1})'.format(group_name, pattern))
            counter += 1
        self.parser_regex = re.compile('|'.join(regex_parts), re.UNICODE)

    def parse(self):
        while self.position < self.length:
            line = self.line
            match = self.parser_regex.match(self.source, self.position)
            if match:
                group_name = match.lastgroup
                tag, handler = self.groups[group_name]
                text = match.group(group_name)
                if handler:
                    text = handler(self, text)
                if tag:
                    token = JSONxToken(tag, text, line, self.position)
                    yield token
            else:
                raise exception.LexerException('Illegal character {0} at ({1}, {2})'
                                               .format(self.source[self.position].encode('unicode-escape'),
                                                       line, self.position), (line, self.position))

            self.position = match.end()
        yield JSONxToken(Type.EOF, 'EOF', self.line, self.position)
        return


def newline(lexer, text):
    lexer.line += text.count('\n')


def comment(lexer, text):
    lexer.line += text.count('\n')


def string(lexer, text):
    text = utils.decode_escapes(text)
    return text[1: -1]


regex_patterns = [
    (r'(\r\n|\n|\r)+', Type.IGNORE, newline),
    (r'[ \t]+', Type.IGNORE),
    (r'//[^\n]*', Type.IGNORE),
    (r'{', Type.LEFT_CURLY_BRACKET),
    (r'}', Type.RIGHT_CURLY_BRACKET),
    (r'\[', Type.LEFT_SQUARE_BRACKET),
    (r'\]', Type.RIGHT_SQUARE_BRACKET),
    (r'\$', Type.DOLLAR),
    (r'\:', Type.COLON),
    (r',', Type.COMMA),
    (r'([+-]?(0|[1-9][0-9]*)(\.[0-9]*)?([eE][+-]?[0-9]+)?)', Type.NUMBER),
    (r'\b(true|false|null)\b', Type.KEYWORD),
    (r'[A-Za-z_][A-Za-z0-9_]*', Type.ID),
    (r'("(?:[^"\\]|\\.)*")', Type.STRING, string),
    (r'/\*(.|\n)*?\*/', Type.IGNORE, comment)
]


def tokenize(source):
    lexer = JSONxLexer(source)
    lexer.register_regex_pattern(*regex_patterns)
    return [token for token in lexer.parse()]
