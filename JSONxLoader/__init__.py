__author__ = 'Alex'

import exception


def load(file_path):
    import loader
    config_loader = loader.JSONxLoader(file_path)
    return config_loader.load()
