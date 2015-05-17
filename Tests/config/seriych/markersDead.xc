/**
 * Options for dead markers.
 * Настройки маркеров для трупов
 */
{
////////////////////////////////////////////////
//
// Подстановки
////////////////////////////////////////////////

  // Подстановки для текстовых полей в расширенном режиме
  "textFieldExtended": {
    // Имя игрока
    "playerName": {
      "name": "Имя игрока",           // название текстового поля, ни на что не влияет
      "visible": false,               // false - не отображать
      "x": 0,                         // положение по оси X
      "y": -34,                       // положение по оси Y
      "alpha": 90,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Arial",              //   название
        "size": 12,                   //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": false,                //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},   // тень
      "format": "<b>{{name%.12s~..}}</b> {{clan}}" // формат текста. См. описание макросов в readme-ru.txt
    },
    // Текстовое поле с названием танка
    "tankName": {
      "name": "Название танка",       // название текстового поля, ни на что не влияет
      "visible": false,               // false - не отображать
      "x": 0,                         // положение по оси X
      "y": -20,                       // положение по оси Y
      "alpha": 80,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
      "font": {                       // параметры шрифта
        "name": "Arial",              //   название
        "size": 13,                   //   размер
        "align": "center",            //   выравнивание текста (left, center, right)
        "bold": false,                //   обычный (false) или жирный (true)
        "italic": false               //   обычный (false) или курсив (true)
      },
      "shadow": ${"marker_shadow"},   // тень
      "format": "{{vehicle}}"         // формат текста. См. описание макросов в readme-ru.txt
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
    "damageMessage": "-{{dmg}} <font face='Wingdings' size='18'>N</font>",     //   текст при обычном уроне (см. описание макросов в readme-ru.txt)
    "blowupMessage": "-{{dmg}} <font face='Wingdings' size='18'>M</font>"      //   текст при взрыве боеукладки (см. описание макросов в readme-ru.txt)
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
        "alpha": 50,                      //   прозрачность
        "color": null,                    //   цвет (в данный момент не используется)
        "maxScale": 100,                  //   максимальный масштаб (по умолчанию 100)
        "scaleX": 0,                      //   смещение по оси X (?)
        "scaleY": 16,                     //   смещение по оси Y (?)
        "shadow": ${"marker_shadow"}      // тень
      },
      "healthBar": {                            // индикатор здоровья
        "visible": false,                 //   false - не отображать
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
          "alpha": 60,                    //     прозрачность
          "color": "0xB60000",            //     цвет
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
        "y": -67,                         //   положение по оси Y
        "w": 16,                          //   ширина
        "h": 16,                          //   высота
        "alpha": 100                      //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
      },
      "levelIcon": {                            // уровень танка
        "visible": false,                 //   false - не отображать
        "x": 0,                           //   положение по оси X
        "y": -21,                         //   положение по оси Y
        "alpha": 100                      //   прозрачность
      },
      "actionMarker": {                         // маркеры "Нужна помощь" и "Атакую"
        "visible": true,                  //   false - не отображать
        "x": 0,                           //   положение по оси X
        "y": -67,                         //   положение по оси Y
        "alpha": 100                      //   прозрачность
      },
      // Блок текстовых полей
      "textFields": [  ]
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
      "textFields": [  ]
    },

// Расширенный режим (с Alt)
  "allyExtended": {
      "vehicleIcon": {                          // иконка типа танка (тт/ст/лт/пт/арта)
        "$ref": { "path": "ally.vehicleIcon" },
        "alpha": 90
      },
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
        // Текстовое поле с именем игрока
        ${"textFieldExtended.playerName"},
        // Текстовое поле с названием танка
        ${"textFieldExtended.tankName"}
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
        // Текстовое поле с именем игрока
        ${"textFieldExtended.playerName"},
        // Текстовое поле с названием танка
        ${"textFieldExtended.tankName"}
      ]
    }
}
