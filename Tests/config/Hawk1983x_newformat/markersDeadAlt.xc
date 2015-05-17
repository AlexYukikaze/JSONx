﻿/**
 * Options for dead with Alt markers.
 * Настройки маркеров для трупов с Alt.
 */
{
"def": {
          "textFields": [
            // Текстовое поле с именем игрока
            {
              "name": "Ник",                  // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -40,                       // положение по оси Y
              "alpha": 80,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "a_RubricaCn",        //   название
                "size": 16,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                //   обычный (false) или жирный (true)
                "italic": false               //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "#000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 200,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "<font color='#666666'>{{vehicle}}\n{{nick}}</font>" // формат текста. См. описание макросов в readme-ru.txt
            },
            // Текстовое поле с названием танка
            {
              "name": "Название танка",       // название текстового поля, ни на что не влияет
              "visible": false,               // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -21,                       // положение по оси Y
              "alpha": 80,                    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "$FieldFont",         //   название
                "size": 14,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": true,                 //   обычный (false) или жирный (true)
                "italic": false               //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "#000000",           //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 200,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "{{vehicle}}"         // формат текста. См. описание макросов в readme-ru.txt
            }
        ]
 },
          "damageText": {                     // всплывающий урон
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -95,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "font": {                         //   параметры шрифта
              "name": "Micramaxnorm",         //     название
              "size": 14,                     //     размер
              "align": "center",              //     выравнивание текста (left, center, right)
              "bold": false,                  //     обычный (false) или жирный (true)
              "italic": false                 //     обычный (false) или курсив (true)
            },
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": "#000000",             //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 517,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 6                       //     размер
            },
            "speed": 3,                       //   время отображения отлетающего урона
            "maxRange": 80,                   //   расстояние, на которое отлетает урон
      "damageMessage": "<font  face='BloodyShacky' size='40'>&#61511;</font>-{{dmg}}\n Олень!",          //текст при обычном уроне (см. описание макросов в readme-ru.txt)
      "blowupMessage": "<font  face='BloodyShacky' size='40'>&#61477;</font>-{{dmg}}\n{{l10n:blownUp}}"  //текст при взрыве боеукладки (см. описание макросов в readme-ru.txt)
  },
  "ally": {
          "healthBar": {                      // индикатор здоровья
            "visible": false,                 //   false - не отображать
            "x": -31,                         //   положение по оси X
            "y": -37,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет основной (допускается использование динамического цвета, см. readme-ru.txt)
            "lcolor": null,                   //   цвет дополнительный (для градиента)
            "width": 60,                      //   ширина полосы здоровья
            "height": 3,                      //   высота полосы здоровья
            "border": {                       //   параметры подложки и рамки
              "alpha": 30,                    //     прозрачность
              "color": "#000000",             //     цвет
              "size": 1                       //     размер рамки
            },
            "fill": {                         //   параметры оставшегося здоровья
              "alpha": 70                     //     прозрачность
            },                                //
            "damage": {                       //   параметры анимации отнимаемого здоровья
              "alpha": 80,                    //     прозрачность
              "color": "#FFFFFF",                  //     цвет
              "fade": 1                       //     время затухания в секундах
            }
          },
          "vehicleIcon": {                    // иконка типа танка (тт/ст/лт/пт/арта)
            "visible": true,                  //   false - не отображать
            "showSpeaker": false,             //   true - Показывать спикер даже если visible=false
            "x": 0,                           //   положение по оси X
            "y": -10,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность
            "color": null,                    //   цвет (в данный момент не используется)
            "maxScale": 100,                  //   максимальный масштаб (по умолчанию 100)
            "scaleX": 0,                      //   смещение по оси X (?)
            "scaleY": 16,                     //   смещение по оси Y (?)
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": "#000000",             //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 120,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 1                       //     размер
            }
          },
          "contourIcon": {                    // иконки танка
            "visible": false,                 //   false - не отображать
            "x": 6,                           //   положение по оси X
            "y": -65,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "amount": 0                       //   интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
          },
          "clanIcon": {                       // Иконка игрока/клана
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -67,                         //   положение по оси Y
            "w": 16,                          //   ширина
            "h": 16,                          //   высота
            "alpha": 100                      //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
          },
          "actionMarker": {                   // маркеры "Нужна помощь" и "Атакую"
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -100,                        //   положение по оси Y
            "alpha": 100                      //   прозрачность
          },
          "levelIcon": {                      // уровень танка
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -21,                         //   положение по оси Y
            "alpha": 100                      //   прозрачность
          },
          "damageText": {
            "$ref": {"path":"damageText"},
            "damageMessage": "<font  face='BloodyShacky' size='30'>&#61511;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> ОЛЕНЬ!",//текст при обычном уничтожении
            "blowupMessage": "<font  face='BloodyShacky' size='30'>&#61477;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> {{l10n:blownUp}}"//текст при взрыве боеукладки
          },
          "damageTextPlayer": {
            "$ref": {"path":"damageText"},
            "damageMessage": "<font ><font  face='BloodyShacky' size='30'>&#61522;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> ОЛЕНЬ!",//текст при обычном уничтожении
            "blowupMessage": "<font  face='BloodyShacky' size='30'>&#61477;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> {{l10n:blownUp}}"//текст при взрыве боеукладки
          },
          "damageTextSquadman": {
            "$ref": {"path":"damageText"},
            "damageMessage": "<font  face='BloodyShacky' size='30'>&#61511;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> ОЛЕНЬ!",//текст при обычном уничтожении
            "blowupMessage": "<font  face='BloodyShacky' size='30'>&#61477;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> {{l10n:blownUp}}"//текст при взрыве боеукладки
          },
        // Блок текстовых полей
          "textFields": 
            ${"def.textFields"}
        },
  "enemy": {
          "healthBar": {                      // индикатор здоровья
            "$ref": {"path":"ally.healthBar"}
          },
          "vehicleIcon": {                    // иконка типа танка (тт/ст/лт/пт/арта)
            "$ref": {"path":"ally.vehicleIcon"}
          },
          "contourIcon": {                    // иконки танка
            "$ref": {"path":"ally.contourIcon"}
          },
          "clanIcon": {                       // Иконка игрока/клана
            "$ref": {"path":"ally.clanIcon"}
          },
          "actionMarker": {                   // маркеры "Нужна помощь" и "Атакую"
            "$ref": {"path":"ally.actionMarker"}
          },
          "levelIcon": {                      // уровень танка
            "$ref": {"path":"ally.levelIcon"}
          },
          "damageText": {
            "$ref": {"path":"damageText"},
            "damageMessage": "<font  face='BloodyShacky' size='30'>&#61511;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> В АНГАР!",//текст при обычном уничтожении
            "blowupMessage": "<font  face='BloodyShacky' size='30'>&#61477;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> {{l10n:blownUp}}"//текст при взрыве боеукладки
          },
          "damageTextPlayer": {
            "$ref": {"path":"damageText"},
            "damageMessage": "<font face='BloodyShacky' size='17'>-{{dmg}}\n<font  face='BloodyShacky' size='30'>&#61561;</font><font face='BloodyShacky'> В АНГАР!",//текст при обычном уничтожении
            "blowupMessage": "<font  face='BloodyShacky' size='30'>&#61477;</font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> {{l10n:blownUp}}"//текст при взрыве боеукладки
          },
          "damageTextSquadman": {
            "$ref": {"path":"damageText"},
            "damageMessage": "</font><font face='BloodyShacky' size='30'>&#61447;</font>\n<font><font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky' size='20'> В АНГАР!",//текст при обычном уничтожении
            "blowupMessage": "<font face='BloodyShacky' size='30'>&#61448;</font>\n<font face='BloodyShacky' size='17'>-{{dmg}}\n<font face='BloodyShacky'> {{l10n:blownUp}}"//текст при взрыве боеукладки
          },
        // Блок текстовых полей
          "textFields": 
            ${"def.textFields"}
        }
}
