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
        return repr(self)

    def __repr__(self):
        return '<JSONxToken: {type} at ({line}, {position})>'.format(**self.__dict__)


class JSONxLexer(object):
    def __init__(self, source):
        self.source = source
        self.length = len(source)
        self.position = 0
        self.line = 1
        self.parser_regex = None
        self.function_patterns = []
        self.group_names = {}

    def register_regex_pattern(self, *patterns):
        regex_parts = []
        counter = 0
        for pattern, tag in patterns:
            group_name = 'GROUP_{0}_{1}'.format(counter, tag)
            self.group_names[group_name] = tag
            regex_parts.append('(?P<{0}>{1})'.format(group_name, pattern))
            counter += 1
        self.parser_regex = re.compile('|'.join(regex_parts))

    def register_function_pattern(self, *patterns):
        self.function_patterns += patterns

    def parse(self):
        while self.position < self.length:
            line = self.line
            match = self.parser_regex.match(self.source, self.position)
            if match:
                group_name = match.lastgroup
                tag = self.group_names[group_name]
                if tag:
                    text = match.group(group_name)
                    token = JSONxToken(tag, text, line, self.position)
                    yield token
                self.position = match.end()
                continue

            match = None
            for pair in self.function_patterns:
                func, tag = pair
                match = func.regex.match(self.source, self.position)
                if match:
                    token = func(match, self)
                    if tag:
                        yield token
                    break

            if not match:
                raise exception.LexerException('Illegal character {0} at ({1}, {2})'
                                               .format(self.source[self.position]
                                                       .replace('\n', '\\n')
                                                       .replace('\r', '\\r'), line, self.position),
                                               (line, self.position))

            self.position = match.end()
        yield JSONxToken(Type.EOF, 'EOF', self.line, self.position)
        return


def regex_pattern(rule):
    pattern = re.compile(rule)

    def decorator(func):
        def _(*args, **kwargs):
            return func(*args, **kwargs)
        _.regex = pattern
        return _
    return decorator


@regex_pattern(r'\n+')
def newline(match, lexer):
    text = match.group()
    lexer.line += text.count('\n')


@regex_pattern(r'/\*(.|\n)*?\*/')
def multi_comment(match, lexer):
    lexer.line += match.group().count('\n')


@regex_pattern(r'("(?:[^"\\]|\\.)*")')
def string(match, lexer):
    text = match.group()
    text = utils.decode_escapes(text)
    return JSONxToken(Type.STRING, text[1: -1], lexer.line, lexer.position)


regex_patterns = [
    (r'[ \t\r]+', Type.IGNORE),
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
]

function_patterns = [
    (newline, Type.IGNORE),
    (multi_comment, Type.IGNORE),
    (string, Type.STRING)
]


def tokenize(source):
    lexer = JSONxLexer(source)
    lexer.register_regex_pattern(*regex_patterns)
    lexer.register_function_pattern(*function_patterns)
    return [token for token in lexer.parse()]