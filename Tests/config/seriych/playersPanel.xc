/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
// подстановка для тени
  "extra_shadow": {
    "color": "0x000000",    //   цвет
    "alpha": 0.75,          //   прозрачность
    "blur": 2,              //   размер
    "strength": 6,          //   интенсивность
    "distance": 0,          //   дистанция смещения
    "angle": 45             //   угол смещения
  },
  // spotted marker
  "extra_spotted":  { "x": -10, "y": 2, "valign": "top", "bindToIcon": true, "format": "{{spotted}}", "shadow": ${"extra_shadow"} },
  // настройка иконок взводов
  "squads": {
    "src": "img://gui/maps/icons/formation/{{squad-num?squad}}.png",
    "w": 28,
    "format": "<font size='13'>{{squad-num}}</font>",
    "format_clear": "<font alpha='#00' size='13'>{{squad-num}}</font>",
    "leftSquadIcon":    { "x":  1, "y": -5, "w": ${"squads.w"}, "src": ${"squads.src"} },
    "rightSquadIcon":   { "x":  1, "y": -3, "w": ${"squads.w"}, "src": ${"squads.src"} },
    "leftSquadNum":     { "x": 10, "y":  0, "format": ${"squads.format"}, "shadow": ${"extra_shadow"} },
    "whiteSquadShadow": { "x": 10, "y":  2, "alpha": 75, "format": ${"squads.format_clear"}, "shadow": { "$ref": { "path": "extra_shadow"}, "color": "0xFFFFFF", "blur": 7 } },
    "leftSquadShadow":  { "x": 10, "y":  1, "alpha": "{{squad?100|0}}", "format": ${"squads.format_clear"}, "shadow": { "$ref": { "path": "extra_shadow"}, "color": "0xFF8800", "blur": 6 } },
    "rightSquadNum":    { "x": 10, "y":  2, "format": ${"squads.format"}, "shadow": ${"extra_shadow"} }
  },
  // настройка полосок хп
  "hp": {
    "hp_x":  0,
    "hp_y":  1,     // 1    18  19
    "hp_h": 22,     // 22   5   4
    "alphaLeft":  "{{alive?20|0}}",     // 20   40
    "alphaRight": "{{alive?30|0}}",     // 30   60
    "alphaLeftBg":   7, // 7    14
    "alphaRightBg": 13, // 13   26
    "bgColorLeft":  "0x11FF11", // "0x11FF11"
    "bgColorRight": "0xFF2222"  // "0xFF2222"
  },
  // универсальная подстановка для полосок хп
  "hpLeft":         { "x": ${"hp.hp_x"}, "y": ${"hp.hp_y"}, "h": ${"hp.hp_h"}, "bgColor": ${"hp.bgColorLeft"},  "alpha": ${"hp.alphaLeft"} },
  "hpRight":        { "x": ${"hp.hp_x"}, "y": ${"hp.hp_y"}, "h": ${"hp.hp_h"}, "bgColor": ${"hp.bgColorRight"}, "alpha": ${"hp.alphaRight"} },
  "hpLeftBg":       { "x": ${"hp.hp_x"}, "y": ${"hp.hp_y"}, "h": ${"hp.hp_h"}, "bgColor": ${"hp.bgColorLeft"},  "alpha": ${"hp.alphaLeftBg"} },
  "hpRightBg":      { "x": ${"hp.hp_x"}, "y": ${"hp.hp_y"}, "h": ${"hp.hp_h"}, "bgColor": ${"hp.bgColorRight"}, "alpha": ${"hp.alphaRightBg"} },
  // short
  "short": {
    "name": { "x": 30, "y": 3, "format": "<font face='$TextFont' size='12' alpha='{{alive?#FF|#80}}'>{{name%.7s~.}}</font>" },
	"round": { "x": 15, "y": 5, "format": "<font face='Webdings' size='11' color='{{c:xwn8}}'>n</font>" }
  },
  // medium
  "medium": {
    "x": 25,
    "hpLeft":       { "$ref": { "path": "hpLeft"},      "x": ${"medium.x"}, "w": "{{hp:140}}" },
    "hpRight":      { "$ref": { "path": "hpRight"},     "x": ${"medium.x"}, "w": "{{hp:140}}" },
    "hpLeftBg":     { "$ref": { "path": "hpLeftBg"},    "x": ${"medium.x"}, "w": "{{hp-max:140}}" },
    "hpRightBg":    { "$ref": { "path": "hpRightBg"},   "x": ${"medium.x"}, "w": "{{hp-max:140}}" }
  },
  // medium2
  "medium2": {
    "x": 25,
    "hpLeft":       { "$ref": { "path": "hpLeft"},      "x": ${"medium2.x"}, "w": "{{hp:190}}" },
    "hpRight":      { "$ref": { "path": "hpRight"},     "x": ${"medium2.x"}, "w": "{{hp:190}}" },
    "hpLeftBg":     { "$ref": { "path": "hpLeftBg"},    "x": ${"medium2.x"}, "w": "{{hp-max:190}}" },
    "hpRightBg":    { "$ref": { "path": "hpRightBg"},   "x": ${"medium2.x"}, "w": "{{hp-max:190}}" }
  },
  // large
  "large": {
    "x": 25,
    "hpLeft":       { "$ref": { "path": "hpLeft"},      "x": ${"large.x"}, "w": "{{hp:265}}" },
    "hpRight":      { "$ref": { "path": "hpRight"},     "x": ${"large.x"}, "w": "{{hp:265}}" },
    "hpLeftBg":     { "$ref": { "path": "hpLeftBg"},    "x": ${"large.x"}, "w": "{{hp-max:265}}" },
    "hpRightBg":    { "$ref": { "path": "hpRightBg"},   "x": ${"large.x"}, "w": "{{hp-max:265}}" }
  },

  "playersPanel": {
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 70,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
    // true - disable background of the selected player.
    // true - убрать подложку выбранного игрока.
    "removeSelectedBackground": false,
    // true - Remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": true,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "medium2",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": "large",
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": { "show": false, "x": 80, "y": 6, "xr": 80, "yr": 6, "h": 16, "w": 16, "alpha": 90 },
    // Options for the "none" panels - empty panels.
    // Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": true,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 30,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "format": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" }
          // ]
          //
          // types of formats available for extended format:
          //   - MovieClip (for loading image)
          //   - TextField (for writing text and creating rectangles)
          // if "src" field is present, MovieClip format will be used
          // if "src" field is absent, TextField format will be used
          //
          // fields available for extended format:
          //   "src" - resource path ("xvm://res/contour/{{vehiclename}}.png")
          //   "format" - text format (macros allowed)
          //
          // fields available for both MovieClip and TextField formats:
          //   "x" - x position (macros allowed)
          //   "y" - y position (macros allowed)
          //   "w" - width (macros allowed)
          //   "h" - height (macros allowed)
          //   "bindToIcon" - if enabled, x position is binded to vehicle icon (default false)
          //   "alpha" - transparency in percents (0..100) (macros allowed)
          //   "rotation" - rotation in degrees (0..360) (macros allowed)
          //   "align" - horizontal alignment ("left", "center", "right")
          //      for left panel default value is "left"
          //      for right panel default value is "right"
          //   "scaleX", "scaleY" - scaling (use negative values for mirroring)
          //
          // fields available for TextField format only:
          //   "valign" - vertical alignment ("top", "center", "bottom")
          //      default value is "top"
          //   "borderColor" - if set, draw border with specified color (macros allowed)
          //   "bgColor" - if set, draw background with specified color (macros allowed)
          //   "antiAliasType" - anti aliasing mode ("advanced" or "normal")
          //   "shadow": {
          //     "distance" (in pixels)
          //     "angle"    (0.0 .. 360.0)
          //     "color"    "0xXXXXXX"
          //     "alpha"    (0.0 .. 1.0)
          //     "blur"     (0.0 .. 255.0)
          //     "strength" (0.0 .. 255.0)
          //    }
          //
          // * all fields are optional
          //
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 30,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the column, 0-250. Default is 0.
      // Минимальная ширина поля, 0-250. По умолчанию: 0.
      "width": 60,
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "<font alpha='{{alive?#FF|#80}}'><b>{{frags}}</b></font>",
      "fragsFormatRight": ${"playersPanel.short.fragsFormatLeft"},
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${"short.name"},
		${"short.round"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${"short.name"},
		${"short.round"},
        ${"extra_spotted"}
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the column, 0-250. Default is 46.
      // Минимальная ширина поля, 0-250. По умолчанию: 46.
      "width": 165,
      // Display format for the left panel (macros allowed, see readme-en.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatLeft":  "<font alpha='{{alive?#FF|#80}}'><textformat leading='9' tabstops='[26,45]'><font color='#DDDDDD'> <tab><font face='Webdings' size='11' color='{{c:xwn8}}'>n</font></font><tab><font face='$TextFont' size='12'><font size='{{player?0}}'>{{name%.12s~..}}</font><font size='{{player|0}}'>{{name%.12s~..}}</font><font size='11' color='#FFCC66'>{{clan}}</font></font></textformat></font>",
      // Display format for the right panel (macros allowed, see readme-en.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatRight": "<font alpha='{{alive?#FF|#80}}'><textformat leading='9' tabstops='[130,164]'><font face='$TextFont' size='12'><font size='{{player?0}}'>{{name%.12s~..}}</font><font size='{{player|0}}'>{{name%.12s~..}}</font><font size='11' color='#FFCC66'>{{clan}}</font></font><tab><font color='#DDDDDD'><font face='Webdings' size='11' color='{{c:xwn8}}'>n</font></font><tab> </textformat></font>",
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "<font alpha='{{alive?#FF|#80}}'><b>{{frags}}</b></font>",
      "fragsFormatRight": ${"playersPanel.medium.fragsFormatLeft"},
      "extraFieldsLeft": [
        ${"medium.hpLeftBg"},
        ${"medium.hpLeft"},
        ${"squads.leftSquadIcon"},
        ${"squads.whiteSquadShadow"},
        ${"squads.leftSquadShadow"},
        ${"squads.leftSquadNum"}
      ],
      "extraFieldsRight": [
        ${"medium.hpRightBg"},
        ${"medium.hpRight"},
        ${"extra_spotted"},
        ${"squads.rightSquadIcon"},
        ${"squads.whiteSquadShadow"},
        ${"squads.rightSquadNum"}
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": true,
      // Maximum width of column, 0-250. Default is 65.
      // Максимальная ширина поля, 0-250. По умолчанию: 65.
      "width": 215,
      // Display format for the left panel (macros allowed, see readme-en.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatLeft":  "<font alpha='{{alive?#FF|#80}}'><textformat leading='9' tabstops='[25,50,75,195,210]'><font color='#DDDDDD'><font face='Consolas' size='13' color='{{c:kb}}'>{{kb%2d~k|--k}}</font><tab><font face='Consolas' size='13' color='{{c:t-battles}}'>{{t-hb%2d~h|--h}}</font><tab><font face='Webdings' size='11' color='{{c:xwn8}}'> n</font></font><tab><font face='$TextFont' size='12'><font size='{{player?0}}'>{{name%.12s~..}}</font><font size='{{player|0}}'>{{name%.12s~..}}</font><font size='11' color='#FFCC66'>{{clan}}</font></font><tab><b>{{frags%2d| }}</b><tab> </textformat></font>",
      // Display format for the right panel (macros allowed, see readme-en.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatRight": "<font alpha='{{alive?#FF|#80}}'><textformat leading='9' tabstops='[15,140,165,190]'><b>{{frags| }}</b><tab><font face='$TextFont' size='12'><font size='{{player?0}}'>{{name%.12s~..}}</font><font size='{{player|0}}'>{{name%.12s~..}}</font><font size='11' color='#FFCC66'>{{clan}}</font></font><tab><font color='#DDDDDD'><font face='Consolas' size='13' color='{{c:kb}}'>{{kb%2d~k|--k}}</font><tab><font face='Consolas' size='13' color='{{c:t-battles}}'>{{t-hb%2d~h|--h}}</font><tab><font face='Webdings' size='11' color='{{c:xwn8}}'> n</font></font></textformat></font>",
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": ${"playersPanel.medium2.fragsFormatLeft"},
      "extraFieldsLeft": [
        ${"medium2.hpLeftBg"},
        ${"medium2.hpLeft"},
        ${"squads.leftSquadIcon"},
        ${"squads.whiteSquadShadow"},
        ${"squads.leftSquadShadow"},
        ${"squads.leftSquadNum"}
      ],
      "extraFieldsRight": [
        ${"medium2.hpRightBg"},
        ${"medium2.hpRight"},
        ${"extra_spotted"},
        ${"squads.rightSquadIcon"},
        ${"squads.whiteSquadShadow"},
        ${"squads.rightSquadNum"}
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the player's name column, 0-250. Default is 170.
      // Минимальная ширина поля имени игрока, 0-250. По умолчанию: 170.
      "width": 110,
      // Display format for player nickname (macros allowed, see readme-en.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. readme-ru.txt).
      "nickFormatLeft": "<font alpha='{{alive?#FF|#80}}'><font color='#DDDDDD'><font face='Consolas' size='13' color='{{c:kb}}'>{{kb%2d~k|--k}}</font> <font face='Consolas' size='13' color='{{c:t-battles}}'>{{t-hb%2d~h|--h}}</font> <font face='Webdings' size='11' color='{{c:xwn8}}'> n </font> <font face='Webdings' size='11' color='{{c:rating}}'> n</font> <font face='Webdings' size='11' color='{{c:t-rating}}'>n</font> </font></font>",
      "nickFormatRight": ${"playersPanel.large.nickFormatLeft"},
      // Display format for vehicle name (macros allowed, see readme-en.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. readme-ru.txt).
      "vehicleFormatLeft": "<font alpha='{{alive?#FF|#80}}'><textformat leading='9' tabstops='[1,120]'> <tab><font face='$TextFont' size='12'><font size='{{player?0}}'>{{name%.12s~..}}</font><font size='{{player|0}}'>{{name%.12s~..}}</font><font size='11' color='#FFCC66'>{{clan}}</font></font><tab> </textformat></font>",
      "vehicleFormatRight": ${"playersPanel.large.vehicleFormatLeft"},
      // Display format for frags (macros allowed, see readme-en.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. readme-ru.txt).
      "fragsFormatLeft": "<font alpha='{{alive?#FF|#80}}'><b>{{frags}}</b></font>",
      "fragsFormatRight": ${"playersPanel.large.fragsFormatLeft"},
      "extraFieldsLeft": [
        ${"large.hpLeftBg"},
        ${"large.hpLeft"}
      ],
      "extraFieldsRight": [
        ${"large.hpRightBg"},
        ${"large.hpRight"},
        ${"extra_spotted"}
      ]
    }
  }
}
