__author__ = 'Alex'


class Node(object):
    @property
    def children(self):
        return None

    def __eq__(self, other):
        if not isinstance(other, Node):
            return False
        return self.children == other.children


class JSONxTree(Node):
    def __init__(self, node):
        self.__node = node

    @property
    def children(self):
        return self.__node


class NumberNode(Node):
    def __init__(self, node):
        self.__node = node

    @property
    def children(self):
        return self.__node


class StringNode(Node):
    def __init__(self, node):
        self.__node = node

    @property
    def children(self):
        return self.__node


class TrueNode(Node):
    def __init__(self, node):
        self.__node = node

    @property
    def children(self):
        return self.__node


class FalseNode(Node):
    def __init__(self, node):
        self.__node = node

    @property
    def children(self):
        return self.__node


class NullNode(Node):
    def __init__(self, node):
        self.__node = node

    @property
    def children(self):
        return self.__node


class ArrayNode(Node):
    def __init__(self, nodes):
        self.__nodes = nodes

    @property
    def children(self):
        return self.__nodes


class ObjectNode(Node):
    def __init__(self, pairs):
        self.__pairs = pairs

    @property
    def children(self):
        return self.__pairs


class PairNode(Node):
    def __init__(self, key, value):
        self.__key = key
        self.__value = value

    @property
    def key(self):
        return self.__key

    @property
    def value(self):
        return self.__value


class ReferenceNode(Node):
    def __init__(self, pair):
        self.__pair = pair

    @property
    def pair(self):
        return self.__pair
