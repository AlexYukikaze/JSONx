__author__ = 'Alex'

import unittest
import JSONx.visitor as visitor
from JSONx.ast import *
from JSONx.lexer import JSONxToken, Type


class TestVisitor(unittest.TestCase):

    def setUp(self):
        self.visitor = visitor.instance()

    def assert_visitor(self, node, expected):
        result = self.visitor.visit(node)
        self.assertEqual(result, expected)

    def test_visit_number(self):
        self.assert_visitor(NumberNode(JSONxToken(Type.NUMBER, '0', 0, 0)), 0)
        self.assert_visitor(NumberNode(JSONxToken(Type.NUMBER, '123', 0, 0)), 123)

    def test_visit_string(self):
        self.assert_visitor(StringNode(JSONxToken(Type.STRING, '', 0, 0)), '')
        self.assert_visitor(StringNode(JSONxToken(Type.STRING, 'string', 0, 0)), 'string')

    def test_visit_true(self):
        self.assert_visitor(TrueNode(JSONxToken(Type.KEYWORD, 'true', 0, 0)), True)

    def test_visit_false(self):
        self.assert_visitor(FalseNode(JSONxToken(Type.KEYWORD, 'false', 0, 0)), False)

    def test_visit_null(self):
        self.assert_visitor(NullNode(JSONxToken(Type.KEYWORD, 'null', 0, 0)), None)

    def test_visit_array(self):
        array_node = ArrayNode([
            TrueNode(JSONxToken(Type.KEYWORD, 'true', 0, 0)),
            FalseNode(JSONxToken(Type.KEYWORD, 'false', 0, 0)),
            NullNode(JSONxToken(Type.KEYWORD, 'null', 0, 0))
        ])
        self.assert_visitor(array_node, [True, False, None])

    def test_visit_pair(self):
        pair_node = PairNode(StringNode(JSONxToken(Type.STRING, 'key', 0, 0)),
                             NumberNode(JSONxToken(Type.NUMBER, '123', 0, 0)))
        self.assert_visitor(pair_node, ('key', 123))

    def test_visit_object(self):
        pair_node = PairNode(StringNode(JSONxToken(Type.STRING, 'key', 0, 0)),
                             NumberNode(JSONxToken(Type.NUMBER, '123', 0, 0)))
        object_node = ObjectNode([pair_node])
        self.assert_visitor(object_node, {"key": 123})

    def test_visit_reference(self):
        ref_node = ReferenceNode(PairNode(
            StringNode(JSONxToken(Type.STRING, 'file.xc', 0, 0)),
            StringNode(JSONxToken(Type.STRING, '.path', 0, 0))
        ))
        self.assert_visitor(ref_node, {"$ref": {"file": "file.xc", "path": ".path"}})

    def test_visit_tree(self):
        array_node = ArrayNode([
            TrueNode(JSONxToken(Type.KEYWORD, 'true', 0, 0)),
            FalseNode(JSONxToken(Type.KEYWORD, 'false', 0, 0)),
            NullNode(JSONxToken(Type.KEYWORD, 'null', 0, 0))
        ])
        pair_node = PairNode(StringNode(JSONxToken(Type.STRING, 'array', 0, 0)), array_node)
        object_node = ObjectNode([pair_node])
        self.assert_visitor(object_node, {"array": [True, False, None]})
