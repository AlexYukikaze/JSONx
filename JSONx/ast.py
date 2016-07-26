__author__ = 'Alex'


# noinspection PyMethodMayBeStatic
class JSONxVisitor(object):
    def visit(self, node):
        method_name = 'visit_' + node.__class__.__name__
        method = getattr(self, method_name, self.visit_generic)
        return method(node)

    def visit_generic(self, node):
        raise RuntimeError('Unknown node ' + node.__class__.__name__)

    def visit_NumberNode(self, node):
        return node.value

    def visit_StringNode(self, node):
        return node.value

    def visit_TrueNode(self, node):
        return True

    def visit_FalseNode(self, node):
        return False

    def visit_NullNode(self, node):
        return None

    def visit_PairNode(self, node):
        return self.visit(node.key), self.visit(node.value)

    def visit_ReferenceNode(self, node):
        return {"$ref": {"file": node.file, "path": node.path}}

    def visit_ObjectNode(self, node):
        result = {}
        for child in node.children:
            key, value = self.visit(child)
            result[key] = value
        return result

    def visit_ArrayNode(self, node):
        result = [self.visit(child) for child in node.children]
        return result


class Node(object):
    def __eq__(self, other):
        return isinstance(other, Node)

    def __repr__(self):
        strings = [repr(item) for item in self.__dict__.itervalues()]
        return "{}({})".format(self.__class__.__name__, ', '.join(strings))

    def __str__(self):
        return self.__class__.__name__ + '()'


class NumberNode(Node):
    def __init__(self, value):
        self.value = value

    def __eq__(self, other):
        return super(NumberNode, self).__eq__(other) \
               and self.value == other.value


class StringNode(Node):
    def __init__(self, value):
        self.value = value

    def __eq__(self, other):
        return super(StringNode, self).__eq__(other) \
               and self.value == other.value


class TrueNode(Node):
    def __eq__(self, other):
        return isinstance(other, TrueNode)


class FalseNode(Node):
    def __eq__(self, other):
        return isinstance(other, FalseNode)


class NullNode(Node):
    def __eq__(self, other):
        return isinstance(other, NullNode)


class ReferenceNode(Node):
    def __init__(self, file_path, object_path):
        self.file = file_path
        self.path = object_path

    def __eq__(self, other):
        return super(ReferenceNode, self).__eq__(other) \
               and (self.file, self.path) == (other.file, other.path)


class ArrayNode(Node):
    def __init__(self, nodes):
        self.children = nodes

    def __eq__(self, other):
        return super(ArrayNode, self).__eq__(other) \
               and self.children == other.children


class ObjectNode(Node):
    def __init__(self, pairs):
        self.children = pairs

    def __eq__(self, other):
        return super(ObjectNode, self).__eq__(other) \
               and self.children == other.children


class PairNode(Node):
    def __init__(self, key, value):
        self.key = key
        self.value = value

    def __eq__(self, other):
        return super(PairNode, self).__eq__(other) \
               and (self.key, self.value) == (other.key, other.value)
