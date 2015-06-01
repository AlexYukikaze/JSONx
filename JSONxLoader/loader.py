__author__ = 'Alex'

import JSONx.utils as utils
import JSONx


class JSONxLoaderException(Exception):

    def __init__(self, message, file_path):
        super(JSONxLoaderException, self).__init__(message, file_path)
        self.message = message
        self.file = file_path


class JSONxLoader(object):
    def __init__(self, file_name, log_func):
        self.file_cache = {}
        self.data_cache = {}
        self.root_file = file_name
        self.log_func = log_func

    def load(self):
        root = {"$ref": {"file": self.root_file, "path": "."}}
        result = self.visit(root, [], '', 32)
        return result

    def load_config(self, path):
        if path in self.data_cache:
            return self.data_cache[path]
        try:
            config = self.load_file(path)
            result = self.data_cache[path] = JSONx.parse(config)
            return result
        except JSONx.JSONxException, e:
            line, col = e.error_position
            raise JSONxLoaderException("{} at {}:{}".format(e.message, line, col), path)

    def visit(self, root, path, file_name, level):
        if level < 0:
            return root, path, file_name, level
        if root is None:
            return None
        if isinstance(root, dict):
            return self.visit_dict(root, path, file_name, level)
        elif isinstance(root, list):
            return self.visit_list(root, path, file_name, level)
        else:
            return root

    def visit_dict(self, root, path, file_name, level):
        if '$ref' not in root:
            ret = {}
            for key in root.iterkeys():
                path.append(key)
                ret[key] = self.visit(root[key], path, file_name, level - 1)
            return ret

        _, err = utils.get_dict_path(root, '$ref/$ref')
        if not err and _:
            obj_path = '/'.join(path)
            raise JSONxLoaderException('Bad reference: endless reference recursion in {}/{}'
                                       .format(file_name, obj_path), file_name)

        ref_path = root['$ref'].get('path') or '.'
        ref_file = root['$ref'].get('file')
        config_file = get_path(file_name, ref_file)

        config = self.load_config(config_file)
        result, err = utils.get_dict_path(config, ref_path)

        if err:
            obj_path = '/'.join(path)
            raise JSONxLoaderException('Bad reference: ${"%s": "%s"} in "%s/%s"\n%s'
                                       % (ref_file or file_name, ref_path, config_file, obj_path, err), file_name)

        if isinstance(result, dict):
            for key in root.iterkeys():
                if key != '$ref':
                    result[key] = root[key]

        return self.visit(result, path, config_file, level - 1)

    def visit_list(self, root, path, file_name, level):
        result = []
        if not path:
            path.append('root')
        key = path.pop()
        for i, item in enumerate(root):
            path.append('{}[{}]'.format(key, i))
            val = self.visit(item, path, file_name, level + 1)
            result.append(val)
        return result

    def load_file(self, path, encoding='utf-8-sig'):
        import codecs
        if path in self.file_cache:
            return self.file_cache[path]
        try:
            stream = codecs.open(path, 'r', encoding)
            self.file_cache[path] = stream.read()
            if self.log_func is not None:
                self.log_func('[JSONxLoader] load: {}'.format(path))
            stream.close()
            return self.file_cache[path]
        except IOError, e:
            raise JSONxLoaderException('File not found', e.filename)


def get_path(root_file, ref):
    import os
    if root_file and ref:
        root_dir = os.path.dirname(root_file)
        file_path = os.path.join(root_dir, ref)
        return file_path
    elif root_file:
        return root_file
    return ref
