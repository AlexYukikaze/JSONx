# -*- coding: utf-8 -*-

import unittest
import JSONxLoader


class TestLoader(unittest.TestCase):

    def test_list(self):
        result = JSONxLoader.load('testdata/array.xc')
        self.assertEqual(result, [0, [1, 2, 3], {}, ''])

    def test_object(self):
        result = JSONxLoader.load('testdata/object.xc')
        self.assertEqual(result, {
            "string_key": "value",
            "number_key": 123,
            "array_key": [],
            "object_key": {}
        })

    def test_unicode(self):
        result = JSONxLoader.load('testdata/unicode.xc')
        self.assertEqual(result['cyrillic_string'], u'Кирилица')
        self.assertEqual(result['lander'], u'Länder')

    def test_ref(self):
        result = JSONxLoader.load('testdata/reference.xc')
        self.assertEqual(result, {
            "def": {
                "damageText": "100500dmg!",
                "damageMessage": "New message"
            },
            "damageTextPlayer": {
                "damageText": "100500dmg!",
                "damageMessage": "Original message"
            },
            "reference_chain": "Taaa daaaa!",
            "override_example": "100500dmg!"
        })

    # def test_trailing_comma(self):
    #     result = JSONxLoader.load('testdata/trailing_comma.xc')
    #     self.assertEqual(result, [0, 1, 2])

    def test_default(self):
        result = JSONxLoader.load('testdata/xvm_default.xc')
        self.assertEqual(result['definition']['description'], 'Default settings for XVM')
        self.assertEqual(result['minimap']['circles']['view'][0]['enabled'], True)
        self.assertEqual(result['minimap']['lines']['vehicle'][0]['enabled'], True)
