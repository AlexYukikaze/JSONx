# JSONx

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/AlexYukikaze/JSONx?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## JSONx grammar
```
JSONx -> value eof
value -> object | array | reference | string | number
object -> '{' pairs '}' | '{' '}'
pairs -> pair (',' pair)*
pair -> string ':' value
array -> '[' elements ']' | '[' ']'
elements -> value (',' value)*
reference -> '$' '{' string (':' string)? '}'

string -> ("(?:[^"\\]|\\.)*")
number -> ([+-]?(0|[1-9][0-9]*)(\.[0-9]*)?([eE][+-]?[0-9]+)?)
eof -> !.
```

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
