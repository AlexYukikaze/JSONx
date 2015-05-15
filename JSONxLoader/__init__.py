__author__ = 'Alex'

import exception


def load(file_path, log_func=None):
    import loader
    config_loader = loader.JSONxLoader(file_path, log_func)
    return config_loader.load()
