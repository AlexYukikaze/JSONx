/**
 * Text substitutions.
 * Текстовые подстановки.
 */
{
  "texts": {
    // Text for {{vtype}} macro.
    // Текст для макроса {{vtype}}.
    "vtype": {
      // Text for light tanks / Текст для легких танков.
      "LT":  "{{l10n:LT}}",
      // Text for medium tanks / Текст для средних танков.
      "MT":  "{{l10n:MT}}",
      // Text for heavy tanks / Текст для тяжелых танков.
      "HT":  "{{l10n:HT}}",
      // Text for arty / Текст для арты.
      "SPG": "{{l10n:SPG}}",
      // Text for tank destroyers / Текст для ПТ.
      "TD":  "{{l10n:TD}}"
    },
    // Text for {{marksOnGun}}, {{v.marksOnGun}} macros.
    // Текст для макросов {{marksOnGun}}, {{v.marksOnGun}}
    "marksOnGun": {
      "_0": "0",
      "_1": "1",
      "_2": "2",
      "_3": "3"
    },
    // Text for {{spotted}} macro.
    // Текст для макроса {{spotted}}
    "spotted": {
      "neverSeen":      "",
      "lost":           "<font face='Webdings' size='24' color='#AAAAAA'>\uF04E</font>",
      "revealed":       "<font face='Webdings' size='24' color='#00AAFF'>\uF04E</font>",
      "dead":           "<font face='Wingdings' size='24' color='#CCCCCC'>N</font>",    // N - череп, V - крест
      "neverSeen_arty": ${"texts.spotted.neverSeen"},
      "lost_arty":      ${"texts.spotted.lost"},
      "revealed_arty":  ${"texts.spotted.revealed"},
      "dead_arty":      ${"texts.spotted.dead"}
    },
    // Text for {{xvm-user}} macro.
    // Текст для макроса {{xvm-user}}
    "xvmuser": {
      // XVM with enabled statistics / XVM со включенной статистикой.
      "on": "on",
      // XVM with disabled statistics / XVM со выключенной статистикой.
      "off": "off",
      // Without XVM / Без XVM.
      "none": "none"
    }
  }
}
