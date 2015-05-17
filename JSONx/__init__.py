__author__ = 'Alex'


import lexer
import parser
import visitor
import utils
from exception import JSONxException


def parse(source):
    walker = visitor.instance()
    tokens = lexer.tokenize(source)
    ast = parser.parse(tokens)
    return walker.visit(ast)
