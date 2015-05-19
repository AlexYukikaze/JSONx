{
  "def": {
    "damageText": "100500dmg!",
    "damageMessage": "New message"
  },
  "damageTextPlayer": {
    "$ref": { "path": "def" },
    "damageMessage": "Original message"
  },

  "reference_chain": ${"ref_step_one.xc": "next_step"},

  "override_example": { // весь блок затрется значением по ссылке
    "ignored_before_ref": "__ignored__",
    "$ref": { "path": "def.damageText" },
    "ignored_after_ref": "__ignored__"
  }
}
