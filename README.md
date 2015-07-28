# JSONx

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/AlexYukikaze/JSONx?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

# Example

## Multi-file JSON load
```python
import JSONxLoader
JSONxLoader.load("example.jsonx")
```

## Parse string
```python
import JSONx
json_string = """
{
    "name": "Alexander",
    "nickname": "Yukikaze",
    "etc": ["list", "of", "anything", 1, 2, 3.14, true, false, null]
}
"""
result = JSONx.parse(json_string)
```
