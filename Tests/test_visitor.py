import unittest
from JSONx.ast import *


class TestVisitor(unittest.TestCase):

    def setUp(self):
        self.visitor = JSONxVisitor()

    def assert_visitor(self, node, expected):
        result = self.visitor.visit(node)
        self.assertEqual(result, expected)

    def test_visit_number(self):
        self.assert_visitor(NumberNode(0), 0)
        self.assert_visitor(NumberNode(123), 123)

    def test_visit_string(self):
        self.assert_visitor(StringNode(''), '')
        self.assert_visitor(StringNode('string'), 'string')

    def test_visit_true(self):
        self.assert_visitor(TrueNode(), True)

    def test_visit_false(self):
        self.assert_visitor(FalseNode(), False)

    def test_visit_null(self):
        self.assert_visitor(NullNode(), None)

    def test_visit_array(self):
        array_node = ArrayNode([
            TrueNode(),
            FalseNode(),
            NullNode()
        ])
        self.assert_visitor(array_node, [True, False, None])

    def test_visit_pair(self):
        pair_node = PairNode(StringNode('key'),
                             NumberNode(123))
        self.assert_visitor(pair_node, ('key', 123))

    def test_visit_object(self):
        pair_node = PairNode(StringNode('key'),
                             NumberNode(123))
        object_node = ObjectNode([pair_node])
        self.assert_visitor(object_node, {"key": 123})

    def test_visit_reference(self):
        ref_node = ReferenceNode('file.xc', '.path')
        self.assert_visitor(ref_node, {"$ref": {"file": "file.xc", "path": ".path"}})

    def test_visit_tree(self):
        array_node = ArrayNode([
            TrueNode(),
            FalseNode(),
            NullNode()
        ])
        pair_node = PairNode(StringNode('array'), array_node)
        object_node = ObjectNode([pair_node])
        self.assert_visitor(object_node, {"array": [True, False, None]})
