__author__ = 'Alex'
import exception
import JSONx

undefined = object()


class JSONxLoader(object):
    def __init__(self, file_name, log_func):
        self.file_cache = {}
        self.data_cache = {}
        self.root_file = file_name
        self.log_func = log_func

    def load(self):
        root = {"$ref": {"file": self.root_file, "path": "."}}
        result = self.visit(root, None, None, 0)
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
            raise exception.JSONxFileExistException(e.message, e.filename)

    @staticmethod
    def split_dir(path):
        files = '/'.join(path.split('\\')).split('/')
        return files.pop(), '/'.join(files) + '/' if len(files) > 0 else ''

    @staticmethod
    def get_object_by_path(obj, path):
        if path == '.' or path == '':
            return obj

        keys = path.split('.')
        current = obj
        for key in keys:
            if key == '':
                continue
            value = current.get(key, undefined)
            if value is undefined:
                return undefined
            current = value
        if isinstance(current, dict):
            from copy import deepcopy
            return deepcopy(current)
        return current

    def visit(self, node, object_path, file_name, level):
        if level > 32:
            return node

        if node is None:
            return None

        object_path = object_path or ''
        if isinstance(node, dict):
            return self.visit_dict(node, object_path, file_name, level)
        elif isinstance(node, list):
            return self.visit_list(node, object_path, file_name, level)
        else:
            return node

    def visit_list(self, array, object_path, file_name, level):
        ret = []
        for i in range(len(array)):
            object_path = object_path + '[' + str(i) + ']'
            val = self.visit(array[i], object_path, file_name, level + 1)
            ret.append(val)
        return ret

    def visit_dict(self, obj, object_path, file_name, level):
        if '$ref' not in obj:
            data = {}
            object_path = '' if not object_path else object_path + '.'
            for key in obj:
                data[key] = self.visit(obj[key], object_path + key, file_name, level + 1)
            return data

        if '$ref' in obj['$ref'] and obj['$ref']['$ref'] is not None:
            raise exception.JSONxBadReferenceException('Bad reference: endless reference recursion in ' + file_name +
                                                       ': ' + object_path, file_name)

        fn, path = self.split_dir(file_name or '')
        file_path = path + (obj['$ref'].get('file', None) or fn)

        try:
            config = self.load_file(file_path)
            if file_path not in self.data_cache:
                self.data_cache[file_path] = JSONx.parse(config)

            if 'path' not in obj['$ref']:
                raise exception.JSONxBadReferenceException('Bad reference: path not found', file_name)

            result = self.get_object_by_path(self.data_cache[file_path], obj['$ref']['path'])
            if result is undefined:
                path = obj['$ref']['path']
                f_name = obj['$ref']['file'] or 'undefined'
                raise exception.JSONxBadReferenceException('Bad reference:\n    '
                                                           '${"' + f_name + '": "' + path + '"}', file_name)

            result = self.visit(result, object_path, file_path, level + 1)
            return result
        except exception.JSONxFileExistException, e:
            raise e
        except JSONx.JSONxException, e:
            raise exception.JSONxLoaderException(e.message, file_path + ':' + str(e.error_position))
