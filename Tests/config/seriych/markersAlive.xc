/**
 * Options for alive markers.
 * Настройки маркеров для живых.
 * Вариант без иконок
 * Названия танков как у союзников, так и у противников
 */
{
////////////////////////////////////////////////
//
// Подстановки
////////////////////////////////////////////////

  // Настройки полоски HP
  "hpBar": {
    // видимость полоски hp
    "showHealthBar": true,      // true - показывать / false - не показывать
    // цвет анимации отнимаемого hp на полоске hp
    "healthBarDmgColor": "{{c:dmg}}"    // рекомендуемые значения: "{{c:dmg}}" (в цвет отлетающего урона) или "{{c:system}}" (в цвет команды)
  },
  // Подстановки для текстовых полей
  "textField": {
    // Отметка стоковой пушки
    "stock": {
      "name": "Stock",                // название текстового поля, ни на что не влияет
      "visible": true,                // false - не отображать
      "x": -31,                       // положение по оси X
      "y": -18,                       // положение по оси Y
      "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": "0xFFFFFF",            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Wingdings",          //   название
        "size": 14,                   //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": true,                 //   обычный (false) или жирный (true)
        "italic": true                //   обычный (false) или курсив (true)
      },
      "shadow": {                     // тень
        "$ref": { "path": "marker_shadow" },
        "size": 2                     //   размер
      },
      "format": "{{turret}}"          // формат текста. Подстановка из turretMarkers.xc
    },
    // Левая лычка
    "leftDot": {
      "name": "xwn",                  // название текстового поля, ни на что не влияет
      "visible": true,                // false - не отображать
      "x": 28,                        // положение по оси X
      "y": -7,                        // положение по оси Y
      "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": "0xDDDDDD",            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Webdings",           //   название
        "size": 8,                    //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": true,                 //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},    // тень
      "format": "<font color='{{c:xwn8}}'>/</font>" // формат текста. См. описание макросов в readme-ru.txt
    },
    // Правая лычка
    "rightDot": {
      "$ref": { "path": "textField.leftDot" },
      "name": "tank winrate",         // название текстового поля, ни на что не влияет
      "x": 33,                        // положение по оси X
      "format": "<font color='{{c:t-rating}}'>/</font>" // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с названием танка
    "tankName": {
      "name": "Название танка",       // название текстового поля, ни на что не влияет
      "tankNameVisible": true,        // false - не отображать
      "visible": ${"textField.tankName.tankNameVisible"},
      "visibleEnemy": true,           // видимость для вражеских танков
      "x": 0,                         // положение по оси X
      "y": -32,                       // положение по оси Y
      "alpha": 90,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Arial Narrow",              //   название
        "size": 14,                   //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": false,                //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},   // тень
      "format": "<b>{{vehicle}}</b>"         // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с именем игрока
    "playerName": {
      "name": "Имя игрока",           // название текстового поля, ни на что не влияет
      "playerNameVisible": false,     // false - не отображать
      "visible": ${"textField.playerName.playerNameVisible"},
      "x": 0,                         // положение по оси X
      "y": -32,                       // положение по оси Y
      "alpha": 90,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": ${"textField.tankName.font"},  // параметры шрифта
      "shadow": ${"marker_shadow"},   // тень
      "format": "<b>{{name%.12s~..}}</b>"     // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с уровнем танка
    "tankLevel": {
      "name": "Level",                // название текстового поля, ни на что не влияет
      "visible": false,               // false - не отображать
      "x": -42,                       // положение по оси X
      "y": -38,                       // положение по оси Y
      "alpha": 80,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Arial",              //   название
        "size": 11,                   //   размер
        "align": "left",              //   выравнивание текста (left, center, right)
        "bold": true,                 //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},   // тень
      "format": "{{level}}"          // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с оставшимся здоровьем
    "hp": {
      "name": "Здоровье",             // название текстового поля, ни на что не влияет
      "visible": true,                // false - не отображать
      "x": 0,                         // положение по оси X
      "y": -19,                       // положение по оси Y
      "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": "0xFFFFFF",            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Consolas",           //   название
        "size": 12,                   //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": true,                 //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},    // тень
      "format": "{{hp}}"              // формат текста. См. описание макросов в readme-ru.txt
    }
  },
  // Подстановки для текстовых полей в расширенном режиме
  "textFieldExtended": {
    // Отметка стоковой башни/пушки
    "stock": {
      "$ref": { "path": "textField.stock" },
      "font": {                       // параметры шрифта
        "$ref": { "path": "textField.stock.font" },
        "bold": true                  //   обычный (false) или жирный (true)
      }
    },
    // Показатели слева
    "leftDot": {
      "name": "winrate",              // название текстового поля, ни на что не влияет
      "visible": true,                // false - не отображать
      "x": -28,                       // положение по оси X
      "y": -7,                        // положение по оси Y
      "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": "0xDDDDDD",            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Consolas",           //   название
        "size": 13,                   //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": true,                 //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},    // тень
      "format": "<font color='{{c:rating}}'>{{rating%2d~%|--%}}</font>" // формат текста. См. описание макросов в readme-ru.txt
    },
    // Показатели справа (на месте лычек)
    "rightDot": {
      "$ref": { "path": "textFieldExtended.leftDot" },
      "name": "xwn and tank winrate", // название текстового поля, ни на что не влияет
      "x": 28,                        // положение по оси X
      "format": "<font color='{{c:xwn8}}'>{{xwn8%2s|--}}</font> <font color='{{c:t-rating}}'>{{t-rating%d~%|--%}}</font>" // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с именем игрока
    "playerName": {
      "$ref": { "path": "textField.playerName" },
      "visible": true,                // false - не отображать
      "y": -45,                       // положение по оси Y
      "format": "<b>{{name%.12s~..}}</b> {{clan}}"  // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с названием танка
    "tankName": {
      "$ref": { "path": "textField.tankName" },
      "visible": true,                // false - не отображать
      "y": -32                        // положение по оси Y
    },
    // Текстовое поле с уровнем танка
    "tankLevel": {
      "$ref": { "path": "textField.tankLevel" },
      "y": -52                        // положение по оси Y
    },
    // Текстовое поле с оставшимся / максимальным здоровьем
    "hp": {
      "$ref": { "path": "textField.hp" },
      "font": {                       // параметры шрифта
        "$ref": { "path": "textField.hp.font" },
        "bold": true                  //   обычный (false) или жирный (true)
      },
      "format": "{{hp}}/{{hp-max}}"   // формат текста. См. описание макросов в readme-ru.txt
    }
  },
  // Всплывающий урон
  "damageText": {
    "visible": true,                  //   false - не отображать
    "x": 0,                           //   положение по оси X
    "y": -70,                         //   положение по оси Y
    "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
    "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
    "font": {                         //   параметры шрифта
      "name": "$FieldFont",           //     название
      "size": 18,                     //     размер
      "align": "center",              //     выравнивание текста (left, center, right)
      "bold": true,                   //     обычный (false) или жирный (true)
      "italic": false                 //     обычный (false) или курсив (true)
    },
    "shadow": ${"marker_shadow"},     // тень
    "speed": 2,                       //   время отображения отлетающего урона
    "maxRange": 60,                   //   расстояние, на которое отлетает урон
    "damageMessage": "-{{dmg}}",      //   текст при обычном уроне (см. описание макросов в readme-ru.txt)
    "blowupMessage": "-{{dmg}} <font face='Wingdings' size='18'>M</font>"      //   текст при взрыве боеукладки (см. описание макросов в readme-ru.txt)
  },
    // Текстовые поля с номером взвода
    "squad": {
        "y_ico_normal":  -57,
        "y_ico_alt":     -70,
        "y_font_normal": -50,
        "y_font_alt":    -63,
        // видимость в нормальном режиме
        "visible_normal": true,
        // видимость при нажатии 'Alt'
        "visible_alt": true,
        // Иконка
        "squadIcon": {
          "name": "иконка взвода",        // название текстового поля, ни на что не влияет
          "visible": ${"squad.visible_normal"}, // false - не отображать
          "x": 0,                         // положение по оси X
          "y": ${"squad.y_ico_normal"},   // положение по оси Y
          "alpha": "{{squad?0|100}}",     // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
          "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
          "font": null,                   // параметры шрифта
          "shadow": ${"marker_shadow"},   // тень
          "format": "<img src='img://gui/maps/icons/formation/{{squad-num?squad}}.png' width='28' height='32'>"     // формат текста. img://gui/maps/icons/formation/{{squad-num?squad}}.png
        },
        "squadIconAlt": {
            "$ref": { "path": "squad.squadIcon" },
            "visible": ${"squad.visible_alt"}, // false - не отображать
            "y": ${"squad.y_ico_alt"}   // положение по оси Y
        },
        // Тонирование иконки
        "squadShadow": {
          "name": "засветка иконки взвода",     // название текстового поля, ни на что не влияет
          "visible": ${"squad.visible_normal"}, // false - не отображать
          "x": 0,                         // положение по оси X
          "y": ${"squad.y_font_normal"},  // положение по оси Y
          "alpha": "{{squad?0|100}}",     // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
          "color": "0xFFFFFF",            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
          "font": {                       // параметры шрифта
            "name": "$FieldFont",         //   название
            "size": 13,                   //   размер
            "align": "center",            //   выравнивание текста (left, center, right)
            "bold": false,                //   обычный (false) или жирный (true)
            "italic": false               //   обычный (false) или курсив (true)
          },
          "shadow": {
            "alpha": 100,                 //   прозрачность
            "color": "{{c:system}}",      //   цвет
            "angle": 45,                  //   угол смещения
            "distance": 0,                //   дистанция смещения
            "size": 7,                    //   размер
            "strength": 600               //   интенсивность
          },
          "format": "<font alpha='#00'>{{squad-num}}</font>"
        },
        "squadShadowAlt": {
            "$ref": { "path": "squad.squadShadow" },
            "visible": ${"squad.visible_alt"}, // false - не отображать
            "y": ${"squad.y_font_alt"}  // положение по оси Y
        },
        // Цифорка номера взвода
        "squadNum": {
          "name": "номер взвода",         // название текстового поля, ни на что не влияет
          "visible": ${"squad.visible_normal"}, // false - не отображать
          "x": 0,                         // положение по оси X
          "y": ${"squad.y_font_normal"},  // положение по оси Y
          "alpha": "{{squad?0|100}}",     // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
          "color": "0xFFFFFF",            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
          "font": {                       // параметры шрифта
            "name": "$FieldFont",              //   название
            "size": 13,                   //   размер
            "align": "center",            //   выравнивание текста (left, center, right)
            "bold": false,                //   обычный (false) или жирный (true)
            "italic": false               //   обычный (false) или курсив (true)
          },
          "shadow": {
            "alpha": 100,                 //   прозрачность
            "color": "0x000000",          //   цвет
            "angle": 45,                  //   угол смещения
            "distance": 0,                //   дистанция смещения
            "size": 2,                    //   размер
            "strength": 255               //   интенсивность
          },
          "format": "{{squad-num}}"
        },
        "squadNumAlt": {
            "$ref": { "path": "squad.squadNum" },
            "visible": ${"squad.visible_alt"}, // false - не отображать
            "y": ${"squad.y_font_alt"}  // положение по оси Y
        }
    },
  // Тень
  "marker_shadow": {
    "alpha": 100,                 //   прозрачность
    "color": "0x000000",          //   цвет
    "angle": 45,                  //   угол смещения
    "distance": 0,                //   дистанция смещения
    "size": 4,                    //   размер
    "strength": 180               //   интенсивность
  },

////////////////////////////////////////////////
// Config
// Конфиг
////////////////////////////////////////////////

// Обычный режим
  "ally": {
      "vehicleIcon": {                          // иконка типа танка (тт/ст/лт/пт/арта)
        "visible": true,                  //   false - не отображать
        "showSpeaker": false,             //   true - Показывать спикер даже если visible=false
        "x": 0,                           //   положение по оси X
        "y": -16,                         //   положение по оси Y
        "alpha": 100,                     //   прозрачность
        "color": null,                    //   цвет (в данный момент не используется)
        "maxScale": 100,                  //   максимальный масштаб (по умолчанию 100)
        "scaleX": 0,                      //   смещение по оси X (?)
        "scaleY": 16,                     //   смещение по оси Y (?)
        "shadow": ${"marker_shadow"}      // тень
      },
      "healthBar": {                            // индикатор здоровья
        "visible": ${"hpBar.showHealthBar"},    //   false - не отображать
        "x": -41,                         //   положение по оси X
        "y": -32,                         //   положение по оси Y
        "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
        "color": null,                    //   цвет основной (допускается использование динамического цвета, см. readme-ru.txt)
        "lcolor": null,                   //   цвет дополнительный (для градиента)
        "width": 80,                      //   ширина полосы здоровья
        "height": 10,                     //   высота полосы здоровья
        "border": {                       //   параметры подложки и рамки
          "alpha": 30,                    //     прозрачность
          "color": "0x000000",            //     цвет
          "size": 2                       //     размер рамки
        },
        "fill": {                         //   параметры оставшегося здоровья
          "alpha": 50                     //     прозрачность
        },                                //
        "damage": {                       //   параметры анимации отнимаемого здоровья
          "alpha": 100,                   //     прозрачность
          "color": ${"hpBar.healthBarDmgColor"},//     цвет
          "fade": 1                       //     время затухания в секундах
        }
      },
      "damageText":         ${"damageText"},    // всплывающий урон
      "damageTextPlayer":   ${"damageText"},    // всплывающий урон, нанесенный игроком
      "damageTextSquadman": ${"damageText"},    // всплывающий урон, нанесенный совзводным
      "contourIcon": {                          // иконки танка
        "visible": false,                 //   false - не отображать
        "x": 0,                           //   положение по оси X
        "y": -41,                         //   положение по оси Y
        "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
        "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
        "amount": 40                       //   интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
      },
      "clanIcon": {                             // Иконка игрока/клана
        "visible": false,                 //   false - не отображать
        "x": 0,                           //   положение по оси X
        "y": -60,                         //   положение по оси Y
        "w": 16,                          //   ширина
        "h": 16,                          //   высота
        "alpha": 100                      //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      },
      "levelIcon": {                            // уровень танка
        "visible": false,                 //   false - не отображать
        "x": 0,                           //   положение по оси X
        "y": -58,                         //   положение по оси Y
        "alpha": 100                      //   прозрачность
      },
      "actionMarker": {                         // маркеры "Нужна помощь" и "Атакую"
        "visible": true,                  //   false - не отображать
        "x": 0,                           //   положение по оси X
        "y": -60,                         //   положение по оси Y
        "alpha": 100                      //   прозрачность
      },
      // Блок текстовых полей
      "textFields": [
        // Отметка стоковой башни/пушки
        ${"textField.stock"},
        // Левая лычка
        ${"textField.leftDot"},
        // Правая лычка
        ${"textField.rightDot"},
        // Текстовое поле с названием танка
        ${"textField.tankName"},
        // Текстовое поле с именем игрока
        ${"textField.playerName"},
        // Текстовое поле с уровнем танка
        ${"textField.tankLevel"},
        // Иконка взвода
        ${"squad.squadIcon"},
        ${"squad.squadShadow"},
        ${"squad.squadNum"},
        // Текстовое поле с оставшимся здоровьем
        ${"textField.hp"}
      ]
    },
  "enemy": {
      "vehicleIcon":  ${"ally.vehicleIcon"},    // иконка типа танка (тт/ст/лт/пт/арта)
      "healthBar":    ${"ally.healthBar"},      // индикатор здоровья
      "damageText":         ${"damageText"},    // всплывающий урон
      "damageTextPlayer":   ${"damageText"},    // всплывающий урон, нанесенный игроком
      "damageTextSquadman": ${"damageText"},    // всплывающий урон, нанесенный совзводным
      "contourIcon":  ${"ally.contourIcon"},    // иконки танка
      "clanIcon":     ${"ally.clanIcon"},       // Иконка игрока/клана
      "levelIcon":    ${"ally.levelIcon"},      // уровень танка
      "actionMarker": ${"ally.actionMarker"},   // маркеры "Нужна помощь" и "Атакую"
      // Блок текстовых полей
      "textFields": [
        // Отметка стоковой башни/пушки
        ${"textField.stock"},
        // Левая лычка
        ${"textField.leftDot"},
        // Правая лычка
        ${"textField.rightDot"},
        // Текстовое поле с названием танка
        //${"textField.tankName"},
        { "$ref": { "path": "textField.tankName" },
            "visible": ${"textField.tankName.visibleEnemy"}
        },
        // Текстовое поле с уровнем танка
        ${"textField.tankLevel"},
        // Иконка взвода
        ${"squad.squadIcon"},
        ${"squad.squadShadow"},
        ${"squad.squadNum"},
        // Текстовое поле с оставшимся здоровьем
        ${"textField.hp"}
      ]
    },

// Расширенный режим (с Alt)
  "allyExtended": {
      "vehicleIcon":  ${"ally.vehicleIcon"},    // иконка типа танка (тт/ст/лт/пт/арта)
      "healthBar":    ${"ally.healthBar"},      // индикатор здоровья
      "damageText":         ${"damageText"},    // всплывающий урон
      "damageTextPlayer":   ${"damageText"},    // всплывающий урон, нанесенный игроком
      "damageTextSquadman": ${"damageText"},    // всплывающий урон, нанесенный совзводным
      "contourIcon":  {                         // иконки танка
        "$ref": { "path": "ally.contourIcon" },
        "y": -55                                //   положение по оси Y
      },
      "clanIcon":     ${"ally.clanIcon"},       // Иконка игрока/клана
      "levelIcon": {                            // уровень танка
        "$ref": { "path": "ally.levelIcon" },
        "y": -70,                               //   положение по оси Y
        "visible": true                         //   положение по оси Y
      },
      "actionMarker": ${"ally.actionMarker"},   // маркеры "Нужна помощь" и "Атакую"
      // Блок текстовых полей
      "textFields": [
        // Отметка стоковой башни/пушки
        ${"textFieldExtended.stock"},
        // Левая лычка
        ${"textFieldExtended.leftDot"},
        // Правая лычка
        ${"textFieldExtended.rightDot"},
        // Текстовое поле с именем игрока
        ${"textFieldExtended.playerName"},
        // Текстовое поле с названием танка
        ${"textFieldExtended.tankName"},
        // Текстовое поле с уровнем танка
        ${"textFieldExtended.tankLevel"},
        // Иконка взвода
        ${"squad.squadIconAlt"},
        ${"squad.squadShadowAlt"},
        ${"squad.squadNumAlt"},
        // Текстовое поле с оставшимся здоровьем
        ${"textFieldExtended.hp"}
      ]
    },
  "enemyExtended": {
      "vehicleIcon":  ${"allyExtended.vehicleIcon"},    // иконка типа танка (тт/ст/лт/пт/арта)
      "healthBar":    ${"allyExtended.healthBar"},      // индикатор здоровья
      "damageText":         ${"damageText"},            // всплывающий урон
      "damageTextPlayer":   ${"damageText"},            // всплывающий урон, нанесенный игроком
      "damageTextSquadman": ${"damageText"},            // всплывающий урон, нанесенный совзводным
      "contourIcon":  ${"allyExtended.contourIcon"},    // иконки танка
      "clanIcon":     ${"allyExtended.clanIcon"},       // Иконка игрока/клана
      "levelIcon":    ${"allyExtended.levelIcon"},      // уровень танка
      "actionMarker": ${"allyExtended.actionMarker"},   // маркеры "Нужна помощь" и "Атакую"
      // Блок текстовых полей
      "textFields": [
        // Отметка стоковой башни/пушки
        ${"textFieldExtended.stock"},
        // Левая лычка
        ${"textFieldExtended.leftDot"},
        // Правая лычка
        ${"textFieldExtended.rightDot"},
        // Текстовое поле с именем игрока
        ${"textFieldExtended.playerName"},
        // Текстовое поле с названием танка
        ${"textFieldExtended.tankName"},
        // Текстовое поле с уровнем танка
        ${"textFieldExtended.tankLevel"},
        // Иконка взвода
        ${"squad.squadIconAlt"},
        ${"squad.squadShadowAlt"},
        ${"squad.squadNumAlt"},
        // Текстовое поле с оставшимся здоровьем
        ${"textFieldExtended.hp"}
      ]
    }
}
