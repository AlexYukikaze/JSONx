__all__ = ['on', 'when', 'decode_escapes', 'get_dict_path']

import inspect
import re
import codecs


def on(param_name):
    def func(fn):
        dispatcher = Dispatcher(param_name, fn)
        return dispatcher
    return func


def when(param_type):
    def decorator(fn):
        frame = inspect.currentframe().f_back
        dispatcher = frame.f_locals[fn.func_name]
        if not isinstance(dispatcher, Dispatcher):
            dispatcher = dispatcher.dispatcher
        dispatcher.add_target(param_type, fn)

        def func(*args, **kw):
            return dispatcher(*args, **kw)
        func.dispatcher = dispatcher
        return func

    return decorator


class Dispatcher(object):
    def __init__(self, param_name, fn):
        self.param_index = inspect.getargspec(fn).args.index(param_name)
        self.param_name = param_name
        self.targets = {}

    def __call__(self, *args, **kw):
        target_type = args[self.param_index].__class__
        handler = self.targets.get(target_type)
        if not handler:
            raise NotImplementedError('Handler for "{}" not implemented'.format(target_type.__name__))
        return handler(*args, **kw)

    def add_target(self, typ, target):
        self.targets[typ] = target


ESCAPE_SEQUENCE_RE = re.compile(r'''
    ( \\U........      # 8-digit hex escapes
    | \\u....          # 4-digit hex escapes
    | \\x..            # 2-digit hex escapes
    | \\[0-7]{1,3}     # Octal escapes
    | \\N\{[^}]+\}     # Unicode characters by name
    | \\[\\'"abfnrtv]  # Single-character escapes
    )''', re.UNICODE | re.VERBOSE)


def decode_escapes(s):
    def decode_match(match):
        return codecs.decode(match.group(0), 'unicode-escape')
    return ESCAPE_SEQUENCE_RE.sub(decode_match, s)


def get_dict_path(dic, path):
    if path is None:
        raise ValueError('"path" can not be None')

    import copy
    import collections

    def callback(accumulator, key):
        obj, keys = accumulator
        if isinstance(obj, collections.Mapping):
            if key in obj:
                keys.append(key)
                return obj[key], keys
        path_string = '/'.join(keys)
        raise Exception('Object "./{}" has no key "{}"'.format(path_string, key))

    try:
        path = path.strip(' ./').replace('.', '/')
        if not path:
            return dic, None
        result, _ = reduce(callback, path.split('/'), (dic, []))

        return copy.deepcopy(result), None
    except Exception, e:
        return None, e.message
