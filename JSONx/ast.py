__author__ = 'Alex'


class Node(object):
    def __init__(self, childs):
        self. children = childs

    def __eq__(self, other):
        if not isinstance(other, Node):
            return False
        return self.children == other.children

    def __repr__(self):
        return "{}({})".format(self.__class__.__name__, ', '.join(str(child) for child in self.children))

    def __str__(self):
        return repr(self)


class Atom(Node):
    def __init__(self, value):
        super(Atom, self).__init__([value])

    @property
    def value(self):
        return self.children[0]


class NumberNode(Atom):
    pass


class StringNode(Atom):
    pass


class TrueNode(Atom):
    pass


class FalseNode(Atom):
    pass


class NullNode(Atom):
    pass


class ReferenceNode(Node):
    def __init__(self, pair):
        super(ReferenceNode, self).__init__([pair])

    @property
    def value(self):
        return self.children[0]


class ArrayNode(Node):
    def __init__(self, nodes):
        super(ArrayNode, self).__init__(nodes)


class ObjectNode(Node):
    def __init__(self, pairs):
        super(ObjectNode, self).__init__(pairs)


class PairNode(Node):
    def __init__(self, key, value):
        super(PairNode, self).__init__([key, value])

    @property
    def key(self):
        return self.children[0]

    @property
    def value(self):
        return self.children[1]
