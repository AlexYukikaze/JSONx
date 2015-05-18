{
  "def": {
    "damageText": "Hello kitty",
    "damageMessage": "New message"
  },
  "damageTextPlayer": {
    "$ref": { "path": "def" },
    "damageMessage": "Some message"
  },

  "anotherExample": { // весь блок затрется значением по ссылке
    "$ref": { "path": "def.damageText" },
    "__ignored__": "Эта часть будет проигнорирована"
  }
}
