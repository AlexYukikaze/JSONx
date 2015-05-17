/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
    //Parameters of the Players Panels ("ears").
    // Параметры панелей игроков ("ушей").
  "playersPanel": {
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 60,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 0,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": true,
	// true - disable background of the selected player.
    // true - убрать подложку выбранного игрока.
    "removeSelectedBackground": false,
    // true - Remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": true,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "none",
	// Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": null,
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": {
      // false - Disable Team/Clan logos in Battle Loading Screen.
      // false - не отображать иконки игрока/клана в окне загрузки боя.
      "show": false,
      // Position on the X axis, relative to the vehicle icon.
      // Положение по оси X относительно иконки танка.
      "x": 83,
      // Position on the Y axis, relative to the vehicle icon.
      // Положение по оси Y относительно иконки танка.
      "y": 3,
      // Position on the X axis for right side (positive values run to the *inside* of the table).
      // Положение по оси X для правых ушей (положительные значения поместят иконку *внутрь* панели).
      "xr": 83,
      // Position on the Y axis for right side.
      // Положение по оси Y для правых ушей.
      "yr": 3,
      // Width of the Team/Clan logo.
      // Ширина иконки игрока/клана.
      "w": 24,
      // Height of the Team/Clan logo.
      // Высота иконки игрока/клана.
      "h": 24,
      // Transparency of the Team/Clan logo.
      // Прозрачность иконки игрока/клана.
      "alpha": "{{alive?100|50}}"
    },
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
		  // from left side of screen
          "x": 0,
          "y": 0,
          "width": 300,
          "height": 28,
          // Set of formats for left panel
          // Набор форматов для левой панели
          "formats": [
		   { "x": 226, "y": 4.5, "h": 22, "w": 22, "src": "xvm://cache/icons/{{clannb}}.png", "alpha": "{{alive?100|50}}"}, // иконки кланов
		   //{ "x": 226, "y": 4.5, "h": 22, "w": 22, "src": "xvm://res/clanicons/RU/clan/{{clannb}}.png", "alpha": "{{alive?100|50}}"}, // иконка клана EWOKI
		   { "x": 194, "y": -1.5, "h": 32, "w": 29, "src": "cfg://Hawk1983x_newformat/myicons/sqally/{{squad}}{{squad-num}}.png", "alpha": "{{alive?100|50}}" }, // иконка взвода
		   { "x": 0, "y": 0, "h": 26.5, "w": 118, "bgColor": 0, "alpha": "{{alive?50|20}}" }, // бардюр для строк
		   { "x": 0, "y": 0, "h": 28, "w": 198, "src": "cfg://Hawk1983x_newformat/myicons/_ally{{squad}}{{player}}{{tk}}{{alive|dead}}.png", "alpha": "{{alive?75|55}}" }, // фон для союзников, игрока и тимкилера
		   { "x": 96, "y": 0.5, "h": 24, "w": 19, "src": "cfg://Hawk1983x_newformat/myicons/frags/_ally{{squad}}{{alive|dead}}.png", "alpha": "{{alive?100|80}}" }, // фон для фрагов
		   { "x": 93, "y": 0,  "valign": "center", "format": "<font face='$FieldFont' size='14' alpha='{{alive?#FF|#B9}}' color='{{tk?#00EAFF|{{player?#FFCC66|{{squad?#FF914C}}}}}}'><b> {{frags%2d}}<tab></b></font>",  "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6} }, // текст фрагов
		   { "x": 1, "y": 0, "h": 24, "w": 91, "src": "cfg://Hawk1983x_newformat/myicons/hp_bg.png", "alpha": "{{alive?0|80}}" }, // фон для HP
		   { "x": 1, "y": 0, "h": 25, "w": 92, "src": "cfg://Hawk1983x_newformat/myicons/hp_{{squad}}{{alive}}.png" }, // картинка HP без отображения HP
		   { "x": "{{ready?29|-300}}", "y": 0.5, "alpha": 100, "format": "<font face='BloodyShacky' size='{{squad?16|{{player?16|{{alive?0|16}}}}}}' color='{{tk?#00EAFF|{{player?#FFCC66|{{squad?#FF914C}}}}}}' alpha='{{alive?#FF|#B9}}' >{{squad?{{alive?&#61446;|&#61442;}}|{{player?{{alive?&#61446;|&#61442;}}|{{alive?&#61510;|&#61510;}}}}}}</font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 4} }, // маркер игрока и уничтоженной техники
		   { "x": 16, "y":-1, "align": "center", "valign": "center", "format": "<font face='$FieldFont' size='13' color='{{c:t-winrate|#FCFCFC}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|   }}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 4 } }, // кол-во боев на танке при кол-ве боев более 5000 - {{t-kb}}, менее 5000 боев {{t-hb}}
		   { "x": 42, "y": 1, "align": "center","format": "<font face='BloodyShacky' size='{{ready?0|18}}' alpha='{{alive?#FF|#0}}' color='{{tk?#00EAFF|{{player?#FFCC66|{{squad?#FF914C}}}}}}'><b>{{l10n:Not ready}}</b></font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 4} }, // маркер "не готов"
		   { "x": 75.5, "y": 0, "align": "center", "valign": "center", "format": "<textformat tabstops='[15]'><font face='BloodyShacky' size='15' color='{{c:wn|#FFFFFF}}'>&#61468;</font><tab><font face='BloodyShacky' size='13' color='{{level<=5?{{c:tdv}}|{{c:tdb|#FFFFFF}}}}'>&#61478;</font></textformat>", "alpha": "{{alive?100|0}}", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 4} }, // маркер маркер {{wn}} и среднего урона(цвет: <=5 по ср.эф.урон, >=6 по ср. урон)
		   { "x": 91, "y": "{{alive?3|3.5}}", "h": 21, "src": "cfg://Hawk1983x_newformat/myicons/{{selected}}.png", "alpha": "{{selected?100|0}}" }, // маркер выделенной строки
		   { "x": 118, "y": 2, "alpha": "{{alive?100|70}}", "src": "cfg://Hawk1983x_newformat/myicons/contour_ally/{{vehiclename|unknown}}.png", "highlight": true} // иконки техники
		  ]
        },
        "rightPanel": {
		  // from right side of screen
          "x": 0,
          "y": 0,
          "width": 300,
          "height": 28,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": [
		   { "x": 226, "y": 4.5, "h": 22, "w": 22, "src": "xvm://cache/icons/{{clannb}}.png", "alpha": "{{alive?100|50}}"}, // иконки кланов
		   { "x": 194, "y": -1.5, "h": 32, "w": 29, "src": "cfg://Hawk1983x_newformat/myicons/sqenemy/{{squad}}{{squad-num}}.png", "alpha": "{{alive?100|50}}" }, // иконка взвода
		   { "x": 0, "y": 0, "h": 26.5, "w": 118, "bgColor": 0, "alpha": "{{alive?50|20}}" }, // бардюр для строк
		   { "x": 0, "y": 0, "h": 28, "w": 198, "src": "cfg://Hawk1983x_newformat/myicons/_enemy{{alive|dead}}.png",  "alpha": "{{alive?60|55}}" }, // фон для противника
		   { "x": 96, "y": 0.5, "h": 24, "w": 19, "src": "cfg://Hawk1983x_newformat/myicons/frags/_enemy{{alive|dead}}.png", "alpha": "{{alive?100|80}}" }, // фон для фрагов
		   { "x": 82, "y": 0,  "valign": "center", "format": "<font face='$FieldFont' size='14' alpha='{{alive?#FF|#B9}}' color='#FFFFFF'><b> {{frags%2d}}<tab></b></font>",  "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6} }, // текст фрагов
		   { "x": 1, "y": 0, "h": 24, "w": 91, "src": "cfg://Hawk1983x_newformat/myicons/hp_bg.png", "alpha": "{{alive?0|80}}" }, // фон для HP
		   { "x": 1, "y": 0, "h": 25, "w": 92, "src": "cfg://Hawk1983x_newformat/myicons/hp_enemy{{alive}}.png" }, // картинка HP без отображения HP
		   { "x": 18, "y":-1, "align": "center", "valign": "center", "format": "<font face='$FieldFont' size='13' color='{{c:t-winrate|#FCFCFC}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|   }}}}</b></font>", "alpha": "{{alive?100|0}}", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6 } }, // кол-во боев на танке при кол-ве боев более 5000 - {{t-kb}}, менее 5000 боев {{t-hb}}
		   { "x": 43, "y": 1, "align": "center", "format": "<font face='BloodyShacky' size='{{ready?0|18}}' alpha='{{alive?#FF|#0}}' color='#FFFFFF'><b>{{l10n:Not ready}}</b></font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 4} }, // маркер "не готов"
		   { "x": 43, "y": 0.5, "align": "center", "format": "<font face='BloodyShacky' size='{{alive?0|16}}' color='#FFFFFF' alpha='#B9'>&#61510;</font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 4} }, // маркер уничтоженной техники
		   { "x": 75.5, "y": 0, "align": "center", "valign": "center", "format": "<textformat tabstops='[15]'><font face='BloodyShacky' size='13' color='{{level<=5?{{c:tdv}}|{{c:tdb|#FFFFFF}}}}'>&#61478;</font><tab><font face='BloodyShacky' size='15' color='{{c:wn|#FFFFFF}}'>&#61469;</font></textformat>", "alpha": "{{alive?100|0}}", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength":4} }, // маркер среднего урона(цвет: <=5 по ср.эф.урон, >=6 по ср. урон) и маркер {{wn}}
		   { "x": 118,"y": 2,  "alpha": "{{alive?100|70}}", "src": "cfg://Hawk1983x_newformat/myicons/contour_enemy/{{vehiclename|unknown}}.png", "highlight": true }, // иконки
		   { "x": "{{dead?43|45}}", "y": 2, "align": "center", "format": "<font size='{{ready?18|0}}'><b>{{spotted}}</b></font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6}, "alpha": 100, "bindToIcon": false } // маркер "статуса засвета"
		  ]
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
	// false - disable (отключить)
      "enabled": false
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
	// false - disable (отключить)
      "enabled": false
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
	// false - disable (отключить)
      "enabled": false,
      // Maximum width of the vehicle name column, 0-250. Default is 65.
      // Максимальная ширина названия танка, 0-250. По умолчанию: 65.
      "width": "{{xvm-stat?193|30}}",
	  "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Display format for the left panel (macros allowed, see readme-en.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatLeft": "",
      // Display format for the right panel (macros allowed, see readme-en.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
      "formatRight": "",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
	  { "x": "{{xvm-stat?339|175}}", "y": 3, "h": 22, "w": 22, "src": "xvm://res/clanicons/RU/clan/{{clannb}}.png", "alpha": "{{alive?100|50}}"}, // иконки кланов
	  { "x": 312, "y": 5, "h": 10, "w": 10, "src": "xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png", "alpha": "{{alive?100|50}}" }, // иконка юзера xvm
	  { "x": "{{xvm-stat?316|150}}", "y": 2, "src": "cfg://Hawk1983x_newformat/myicons/squads/{{squad}}{{squad-num}}.png", "alpha": "{{alive?100|50}}" }, // иконка взвода
	  { "x": 1, "y": 2, "align": "left", "valign": "center", "format": "<font color='#FCFCFC'><font face='a_RubricaCn' alpha='{{alive?#FF|#80}}' color='{{tk?#00EAFF|{{player?#FFCC66|{{squad?#FF914C}}}}}}'>{{.myname.{{name}}|{{name%.14s~..}}}}</font></font>", "alpha": "{{alive?100|50}}",  "shadow": {"strength": 4, "angle": 45 }  }, // ники играков
	  { "x": 124, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:kb|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{kb%d~k|-k}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // кол-во боев по аккаунту
	  { "x": 154, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:wn8|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{wn8%4d|----}}</b></font>", "alpha": "{{alive?100|50}}","shadow": {"strength": 5, "angle": 45 } }, // рейтинг wn8
	  { "x": 184, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:rating|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{rating%2d~%|--%}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // процент побед по  аккаунту
	  { "x": 186, "y": 2, "align": "center", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' alpha='{{ready?#FF|#B9}}'><b>|</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // вертикальна черта
	  { "x": 206, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:t-battles|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|--h}}}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // кол-во боев на танке при кол-ве боев более 5000 - {{t-kb}}, менее 5000 боев {{t-hb}}
	  { "x": 234, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:t-rating|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{t-rating%2d~%|--%}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // процент побед на танке
	  { "x": "{{xvm-stat?235|80}}", "y": 1, "h": 24, "w": 80, "alpha": "{{alive?100|70}}", "src": "cfg://Hawk1983x_newformat/myicons/contour_ally/{{vehiclename|unknown}}.png", "highlight": true} // иконки техники
	  ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
	  { "x": "{{xvm-stat?330|175}}", "y": 3, "h": 22, "w": 22, "src": "xvm://res/clanicons/RU/clan/{{clannb}}.png", "alpha": "{{alive?100|50}}"}, // иконки кланов
	  { "x": 301, "y": 5, "h": 10, "w": 10, "src": "xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png", "alpha": "{{alive?100|50}}"}, //иконка юзера xvm
	  { "x": "{{xvm-stat?306|150}}", "y": 2, "src": "cfg://Hawk1983x_newformat/myicons/squads/{{squad}}{{squad-num}}.png", "alpha": "{{alive?100|50}}" },  // иконка взвода
	  { "x": 1, "y": 2, "align": "right", "valign": "center", "format": "<font  face='a_RubricaCn' size='13' color='#FCFCFC' alpha='{{ready?#FF|#80}}'>{{name%.13s~..}}</font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 4, "angle": 45 } }, // ники играков
	  { "x": 90, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:kb|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{kb%d~k|-k}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // кол-во боев по аккаунту
	  { "x": 112, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:wn8|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{wn8%4d|----}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // рейтинг wn8
	  { "x": 142, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:rating|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{rating%2d~%|--%}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // процент побед по  аккаунту
	  { "x": 174, "y": 2, "align": "center", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' alpha='{{ready?#FF|#B9}}'><b>|</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // вертикальна черта
	  { "x": 178, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:t-rating|#FCFCFC}}' alpha='{{ready?#FF|#80}}'><b>{{t-rating%2d~%|--%}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // процент побед на танке
	  { "x": 206, "y": 2, "align": "right", "valign": "center", "format": "<font face='$FieldFont' size='{{xvm-stat?13|0}}' color='{{c:t-battles|#FCFCFC}}' alpha='{{ready?#FF|#B9}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|--h}}}}</b></font>", "alpha": "{{alive?100|50}}", "shadow": {"strength": 5, "angle": 45 } }, // кол-во боев на танке при кол-ве боев более 5000 - {{t-kb}}, менее 5000 боев {{t-hb}}
	  { "x": "{{xvm-stat?223|80}}", "y": 1, "h": 24, "w": 80, "alpha": "{{alive?100|70}}", "src": "cfg://Hawk1983x_newformat/myicons/contour_enemy/{{vehiclename|unknown}}.png", "highlight": true} // иконки техники
	  ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
	// false - disable (отключить)
      "enabled": false
    }
  }
}
