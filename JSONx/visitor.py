__author__ = 'Alex'

import utils
import ast


class JSONxVisitor(object):

    @utils.on('node')
    def visit(self, node):
        pass

    @utils.when(ast.JSONxTree)
    def visit(self, node):
        result = self.visit(node.children)
        return result

    @utils.when(ast.ObjectNode)
    def visit(self, node):
        result = {}
        pairs = node.children
        if pairs:
            for pair_node in pairs:
                key, value = self.visit(pair_node)
                result[key] = value
        return result

    @utils.when(ast.PairNode)
    def visit(self, node):
        key = self.visit(node.key)
        value = self.visit(node.value)
        return key, value

    @utils.when(ast.ArrayNode)
    def visit(self, node):
        return map(self.visit, node.children)

    @utils.when(ast.ReferenceNode)
    def visit(self, node):
        left, right = self.visit(node.pair)
        return {'$ref': {'file': left, 'path': right}}

    @utils.when(ast.NumberNode)
    def visit(self, node):
        token = node.children
        try:
            result = int(token.value)
        except ValueError:
            result = float(token.value)
        return result

    @utils.when(ast.StringNode)
    def visit(self, node):
        return node.children.value

    @utils.when(ast.NullNode)
    def visit(self, node):
        return None

    @utils.when(ast.TrueNode)
    def visit(self, node):
        return True

    @utils.when(ast.FalseNode)
    def visit(self, node):
        return False

__instance = JSONxVisitor()


def instance():
    return __instance
