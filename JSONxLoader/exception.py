__author__ = 'Alex'


class JSONxLoaderException(Exception):
    def __init__(self, message, file_path, *args):
        super(JSONxLoaderException, self).__init__(message, file_path)
        self.file = file_path


class JSONxFileExistException(JSONxLoaderException):
    def __init__(self, message, file_path):
        super(JSONxFileExistException, self).__init__(message, file_path)


class JSONxBadReferenceException(JSONxLoaderException):
    def __init__(self, message, file_path):
        super(JSONxBadReferenceException, self).__init__(message, file_path)
