__all__ = ['on', 'when']

import inspect
import re
import codecs


def on(param_name):
    def f(fn):
        dispatcher = Dispatcher(param_name, fn)
        return dispatcher

    return f


def when(param_type):
    def f(fn):
        frame = inspect.currentframe().f_back
        dispatcher = frame.f_locals[fn.func_name]
        if not isinstance(dispatcher, Dispatcher):
            dispatcher = dispatcher.dispatcher
        dispatcher.add_target(param_type, fn)

        def ff(*args, **kw):
            return dispatcher(*args, **kw)

        ff.dispatcher = dispatcher
        return ff

    return f


class Dispatcher(object):
    def __init__(self, param_name, fn):
        frame = inspect.currentframe().f_back.f_back
        top_level = frame.f_locals == frame.f_globals
        self.param_index = inspect.getargspec(fn).args.index(param_name)
        self.param_name = param_name
        self.targets = {}

    def __call__(self, *args, **kw):
        typ = args[self.param_index].__class__
        d = self.targets.get(typ)
        if d is not None:
            return d(*args, **kw)
        else:
            issub = issubclass
            t = self.targets
            ks = t.iterkeys()
            return [t[k](*args, **kw) for k in ks if issub(typ, k)]

    def add_target(self, typ, target):
        self.targets[typ] = target


"""
lazy - Decorators and utilities for lazy evaluation in Python
Alberto Bertogli (albertito@blitiri.com.ar)
"""


class _LazyWrapper:
    def __init__(self, f, args, kwargs):
        self._override = True
        self._isset = False
        self._value = None
        self._func = f
        self._args = args
        self._kwargs = kwargs
        self._override = False

    def _checkset(self):
        if not self._isset:
            self._override = True
            self._value = self._func(*self._args, **self._kwargs)
            self._isset = True
            self._checkset = lambda: True
            self._override = False

    def __getattr__(self, name):
        if self.__dict__['_override']:
            return self.__dict__[name]
        self._checkset()
        return self._value.__getattribute__(name)

    def __setattr__(self, name, val):
        if name == '_override' or self._override:
            self.__dict__[name] = val
            return
        self._checkset()
        setattr(self._value, name, val)
        return


def lazy(f):
    def newf(*args, **kwargs):
        return _LazyWrapper(f, args, kwargs)

    return newf


def memoize(f):
    """ Memoization decorator for a function taking one or more arguments. """

    class memodict(dict):
        __slots__ = ()

        def __getitem__(self, *key):
            return dict.__getitem__(self, key)

        def __missing__(self, key):
            ret = self[key] = f(*key)
            return ret

    return memodict().__getitem__


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
