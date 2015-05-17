/**
 * Options for alive without Alt markers.
 * Настройки маркеров для живых без Alt.
 */
{
"def": {
            // Текстовое поле с названием танка
	"vehicle  name": {
              "name": "Название танка",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x":  1,                        // положение по оси X
              "y": -34.5,                     // положение по оси Y
              "alpha": "{{ready?100|50}}",    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "{{c:vtype|#FCFCFC}}", // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "$FieldFont",         //   название
                "size": 16,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": true,                 //   обычный (false) или жирный (true)
                "italic": false               //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 90,                  //   прозрачность
                "color": "#000000",           //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 317,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 4                     //   размер
              },
	        "format": "{{vehicle}}"           // формат текста. См. описание макросов в readme-ru.txt
            },
            // Текстовое поле с текущим здоровьем
    "hp": {
              "name": "Здоровье",             // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": -1,                        // положение по оси X
              "y": -17,                       // положение по оси Y
              "alpha": "{{ready?100|50}}",    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "{{c:hp-ratio}}",      // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "$FieldFont",         //   название
                "size": 14,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": true,                 //   обычный (false) или жирный (true)
                "italic": false               //   обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "#000000",           //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 317,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 4                     //   размер
              },
              "format": "{{hp}}/{{hp-max}}"   // формат текста. См. описание макросов в readme-ru.txt
            },
			// Уровень танка 
    "TLevel&avglvl": {
              "name": "Уровень танка и ср.уровень техники",  // название текстового поля, ни на что не влияет
              "x": -2,                                       // положение по оси X
              "y": 0,                                        // положение по оси Y
              "visible": true,                               // false - не отображать
			  "alpha": "{{ready?100|50}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
			  "color": "#FCFCFC",                            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                                      // параметры шрифта
                "bold": false,                               //   обычный (false) или жирный (true)
                "align": "center"                            //   выравнивание текста (left, center, right)
              },
			  "shadow": {                                    // параметры тени
                "angle": 45,                                 //   угол смещения
                "distance": 1,                               //   дистанция смещение
                "strength": 500,                             //   интенсивность
                "size": 4,                                   //   размер
                "alpha": 90,                                 //   прозрачность
                "color": "#000000"                           //   цвет
              },
              "format": "<textformat tabstops='[85]' leading='-2'><font face='BloodyShacky' size='14' alpha='#FF' color='{{c:avglvl|#FCFCFC}}'>&#61461;</font><tab><font face='$FieldFont' size='13 alpha='#FF' color='#FCFCFC'><b>{{rlevel}}</b></font></textformat>"
			  },                                             // формат текста. См. описание макросов в readme-ru.txt
			// маркер "не доступен"
    "NO READY": {
              "name": "маркер не доступен",    // название текстового поля, ни на что не влияет
              "visible": true,                 // false - не отображать
              "x":  2,                         // положение по оси X
              "y":-83,                         // положение по оси Y
              "alpha": "{{ready?0|100}}",      // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "#C09000",              // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                        // параметры шрифта
                "align": "center",             //   выравнивание текста (left, center, right)
                "bold": true,                  //   обычный (false) или жирный (true)
                "italic": false                //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "#000000",           //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 300,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 4                     //   размер
              },
              "format": "<font face='BloodyShacky' size='34'>{{ally?&#61530;|&#61531;}}</font>"         // формат текста. См. описание макросов в readme-ru.txt
            },
			// Сток башня фон
    "turret2": {
              "name": "turret2",              // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 64,                        // положение по оси X
              "y": -42.5,                     // положение по оси Y
              "alpha": "{{ready?100|50}}",    // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "xvm",                //   название
                "size": 33,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                //   обычный (false) или жирный (true)
                "italic": false               //     обычный (false) или курсив (true)
              },
             "shadow": {                      //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": null,                  //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 100,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 6                       //     размер
              },
              "format": "{{turret}}"          // формат текста. См. описание макросов в readme-ru.txt
            },
            // Текстовое поле стоковой башни1
    "turret1": {
              "name": "turret1",               // название текстового поля, ни на что не влияет
              "visible": true,                 // false - не отображать
              "x": 64,                         // положение по оси X
              "y": -42.5,                      // положение по оси Y
			  "alpha": "{{ready?100|50}}",
              "format": "<img src='cfg://Hawk1983x_newformat/myicons/{{turret}}.png' width='36' height='36'>" // формат текста. См. описание макросов в readme-ru.txt
            },
			// Иконка взвода союзники
    "sqally_img": {
              "name": "sqally_img",            // название текстового поля, ни на что не влияет
              "visible": true,                 // false - не отображать
              "x": -53.3,                      // положение по оси X
              "y": -41.5,                      // положение по оси Y
			  "alpha": "{{ready?100|50}}",
              "format": "<img src='cfg://Hawk1983x_newformat/myicons/sqally/{{squad}}{{squad-num}}.png' width='29' height='32'>" // формат текста. См. описание макросов в readme-ru.txt
            },
			// Иконка взвода противники
    "sqenemy_img": {
              "name": "sqenemy_img",           // название текстового поля, ни на что не влияет
              "visible": true,                 // false - не отображать
              "x": -53.3,                      // положение по оси X
              "y": -41.5,                      // положение по оси Y
			  "alpha": "{{ready?100|50}}",
              "format": "<img src='cfg://Hawk1983x_newformat/myicons/sqenemy/{{squad}}{{squad-num}}.png' width='29' height='32'>" // формат текста. См. описание макросов в readme-ru.txt
            }
     },
	// всплывающий урон (я и взводники дамажим)
  "damageText": {                     
            "visible": true,                  //   false - не отображать
            "x": -44,                         //   положение по оси X
            "y": -83,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "font": {                         //   параметры шрифта
              "name": "BloodyShacky",         //     название
              "size": 20,                     //     размер
              "align": "center",              //     выравнивание текста (left, center, right)
              "bold": true,                   //     обычный (false) или жирный (true)
              "italic": false                 //     обычный (false) или курсив (true)
            },
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": "#000000",             //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 317,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 6                       //     размер
            },
            "speed": 3.5,                     //   время отображения отлетающего урона
            "maxRange": 0,                    //   расстояние, на которое отлетает урон
            "damageMessage":"-{{dmg}}"        //   текст при уроне (см. описание макросов в readme-ru.txt)
  },
  "ally": {
          "healthBar": {                            // индикатор здоровья
            "visible": true,                        //   false - не отображать
            "x": -53.5,                             //   положение по оси X
            "y": -30,                               //   положение по оси Y
            "alpha": "{{ready?100|50}}",            //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": "{{squad?#FF914C|#3E7423}}",   //   цвет основной (допускается использование динамического цвета, см. readme-ru.txt)
            "lcolor": null,                         //   цвет дополнительный (для градиента)
            "width": 104,                           //   ширина полосы здоровья
            "height":16,                            //   высота полосы здоровья
            "border": {                             //   параметры подложки и рамки
              "alpha": 80,                          //     прозрачность
              "color": "#000000",                   //     цвет
              "size": 1                             //     размер рамки
            },
            "fill": {                               //   параметры оставшегося здоровья
              "alpha": 100                          //     прозрачность
            },                                 
            "damage": {                             //   параметры анимации отнимаемого здоровья
              "alpha": 100,                         //     прозрачность
              "color": "{{c:dmg}}",                 //     цвет
              "fade": 1.8                           //     время затухания в секундах
            }
          },
          "vehicleIcon": {                    // иконка типа танка (тт/ст/лт/пт/арта)
            "visible": true,                  //   false - не отображать
            "showSpeaker": true,              //   true - Показывать спикер даже если visible=false
            "x": -1,                          //   положение по оси X
            "y": -12,                         //   положение по оси Y
            "alpha": "{{ready?100|50}}",                     //   прозрачность
            "color":  "{{c:vtype|#FCFCFC}}",                     //   цвет (в данный момент не используется)
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
            "x": 17,                          //   положение по оси X
            "y": -16,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "amount": 0                       //   интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
          },
          "clanIcon": {                       // Иконка игрока/клана
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -77,                         //   положение по оси Y
            "w": 17,                          //   ширина
            "h": 17,                          //   высота
            "alpha": 100                      //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
          },
          "actionMarker": {                   // маркеры "Нужна помощь" и "Атакую"
            "visible": true,                  //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -100,                        //   положение по оси Y
            "alpha": 100                      //   прозрачность
          },
          "levelIcon": {                      // уровень танка
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -23,                         //   положение по оси Y
            "alpha": 100                      //   прозрачность
          },
          "damageText": {                     // всплывающий урон(ВСЕМ от ВСЕХ обычный урон)
            "visible": true,                  //   false - не отображать
            "x": 42,                          //   положение по оси X
            "y": -83,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "font": {                         //   параметры шрифта
              "name": "$FieldFont",           //     название
              "size": 20,                     //     размер
              "align": "center",              //     выравнивание текста (left, center, right)
              "bold": true,                   //     обычный (false) или жирный (true)
              "italic": false                 //     обычный (false) или курсив (true)
            },
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": "#000000",             //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 317,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 6                       //     размер
            },
            "speed": 3,                       //   время отображения отлетающего урона
            "maxRange": 0,                    //   расстояние, на которое отлетает урон
            "damageMessage":"-{{dmg}}"        //   текст при уроне (см. описание макросов в readme-ru.txt)
          },
          "damageTextPlayer": { "$ref": {"path":"damageText"}
          },
          "damageTextSquadman": {"$ref": {"path":"damageText"}
          },
          // Блок текстовых полей
          "textFields": [
		    // Текстовое поле с уровнем танка
		    ${"def.TLevel&avglvl"},
		    // Текстовое поле с названием танка
		    ${"def.vehicle  name"},
            // Текстовое поле с текущим здоровьем
            ${"def.hp"},
            // Текстовое поле фон стоковой башни
            ${"def.turret2"},
            // Текстовое поле стоковой башни
            ${"def.turret1"},
			// Взвод img
            ${"def.sqally_img"},
			// маркер "не готов"
            ${ "def.NO READY" },
            // Ники игроков во всех режимах боев, кроме "regular"
            {
              "name": "nick",                 //  название текстового поля, ни на что не влияет
              "visible": true,                //  false - не отображать
              "x":   1,                       //  положение по оси X
              "y": -49,                       //  положение по оси Y
              "alpha": "{{ready?100|0}}",     //  прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  //  цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       //  параметры шрифта
                "name": "a_RubricaCn",        //  название
                "size": 15,                   //  размер
                "align": "center",            //  выравнивание текста (left, center, right)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "shadow": {                     //  параметры тени
                "alpha": 90,                  //  прозрачность
                "color": "#000000",           //  цвет
                "angle": 45,                  //  угол смещения
                "strength": 300,              //  интенсивность
                "distance": 0,                //  дистанция смещение
                "size": 4                     //  размер
              },
              "format": "<font size='{{battletype=regular?0|16}}'>{{.myname.{{name}}|{{name%.17s~..}}}}</font>"     //  формат текста. См. описание макросов в readme-ru.txt
            },
			// Статистика над танком (вместо статистики - ники игроков для союзников во всех режимах кроме "regular")
			{
              "name": "Статистика над танком", // название текстового поля, ни на что не влияет
              "visible": true,                 // false - не отображать
              "x":  -1,                        // положение по оси X
              "y": -49,                        // положение по оси Y
              "alpha": "{{ready?100|50}}",     // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                   // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                        // параметры шрифта
                "align": "center",             //   выравнивание текста (left, center, right)
                "bold": true,                  //   обычный (false) или жирный (true)
                "italic": false                //     обычный (false) или курсив (true)
              },
              "shadow": {                      // параметры тени
                "alpha": 100,                  //   прозрачность
                "color": "#000000",            //   цвет
                "angle": 45,                   //   угол смещения
                "strength": 300,               //   интенсивность
                "distance": 0,                 //   дистанция смещение
                "size": 4                      //   размер
              },
            "format": "<textformat tabstops='[34,30,65,81]' leading='-2'><font face='$FieldFont' size='{{battletype=regular?14|0}}' color='{{c:t-battles|#FCFCFC}}'><b>{{t-battles%5d|----}}</b></font><tab><font face='BloodyShacky' size='{{battletype=regular?13|0}}' color='{{c:xte|#FCFCFC}}'>&#61579;</font><tab><font face='BloodyShacky' size='{{battletype=regular?18|0}}' color='{{c:wn|#FCFCFC}}'> {{ally?&#61468;|&#61469;}}</font><tab><font face='BloodyShacky' size='{{battletype=regular?13|0}}' color='{{c:xte|#FCFCFC}}'>&#61578;</font><tab><font face='$FieldFont' size='{{battletype=regular?14|0}}' color='{{c:t-rating|#FCFCFC}}'><b>{{t-rating%d~%|--%}}</b></font></textformat>"      // формат текста. См. описание макросов в readme-ru.txt
            }, 
            // Help
            {
              "name": "Help",                                                 // название текстового поля, ни на что не влияет
              "visible": true,                                                // false - не отображать
              "x": -0,                                                        //   положение по оси X
              "y": -26,                                                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                                      // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "{{tk?#00EAFF|{{player?#1FD510|{{squad?#FF914C}}}}}}", // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                                                       // параметры шрифта
                "name": null,                                                 //   название
                "size": 30,                                                   //   размер
                "align": "center",                                            //   выравнивание текста (left, center, right)
                "bold": false,                                                //   обычный (false) или жирный (true)
                "italic": false                                               //     обычный (false) или курсив (true)
              },
              "shadow": {
                "angle": 45,
                "distance": 1,
                "strength": 500,
                "size": 4,
                "alpha": 90,
                "color": "#000000"                   
              },
              "format": "<font face='arial'>{{tk?&#xBB;             &#xAB;|&#xAB;             &#xBB;}}</font>"      // формат текста. См. описание макросов в readme-ru.txt
            }
          ]
        },
  "enemy": {
          "healthBar": {                      // индикатор здоровья
            "visible": true,                  //   false - не отображать
            "x": -53.5,                       //   положение по оси X
            "y": -30,                         //   положение по оси Y
            "alpha": "{{ready?100|50}}",      //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": "#850000",               //   цвет основной (допускается использование динамического цвета, см. readme-ru.txt)
            "lcolor": null,                   //   цвет дополнительный (для градиента)
            "width": 104,                     //   ширина полосы здоровья
            "height":16,                      //   высота полосы здоровья
            "border": {                       //   параметры подложки и рамки
              "alpha": 80,                    //     прозрачность
              "color": "#000000",             //     цвет
              "size": 1                       //     размер рамки
            },
            "fill": {                         //   параметры оставшегося здоровья
              "alpha": 100                    //     прозрачность
            },                                //
            "damage": {                       //   параметры анимации отнимаемого здоровья
              "alpha": 100,                   //     прозрачность
              "color": "{{c:dmg}}",           //     цвет
              "fade": 1.8                     //     время затухания в секундах
            }
          },
          "vehicleIcon": {                         // иконка типа танка (тт/ст/лт/пт/арта)
            "$ref": {"path":"ally.vehicleIcon"} },
          "contourIcon": {                         // иконки танка
            "$ref": {"path":"ally.contourIcon"} },
          "clanIcon": {                            // Иконка игрока/клана
            "$ref": {"path":"ally.clanIcon"} },
          "actionMarker": {                        // маркеры "Нужна помощь" и "Атакую"
            "$ref": {"path":"ally.actionMarker"} },
          "levelIcon": {                           // уровень танка
            "$ref": {"path":"ally.levelIcon"} },
          "damageText": {
            "$ref": {"path":"ally.damageText"} },
          "damageTextPlayer": {
            "$ref": {"path":"damageText"} },
          "damageTextSquadman": {
            "$ref": {"path":"damageText"} },
        // Блок текстовых полей
          "textFields": [
		    // Текстовое поле с уровнем танка
		    ${"def.TLevel&avglvl"},
		    // Текстовое поле с названием танка
		    ${"def.vehicle  name"},
		    // Текстовое поле с текущим здоровьем
            ${"def.hp"},
			// Текстовое поле фон стоковой башни
            ${"def.turret2"},
            // Текстовое поле стоковой башни
            ${"def.turret1"},
			// Взвод img
            ${"def.sqenemy_img"},
			// маркер "не готов"
            ${ "def.NO READY" },
			// Статистика над танком
			{
              "name": "Статистика над танком", // название текстового поля, ни на что не влияет
              "visible": true,                 // false - не отображать
              "x":  -1,                        // положение по оси X
              "y": -49,                        // положение по оси Y
              "alpha": "{{ready?100|50}}",     // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                   // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                        // параметры шрифта
                "align": "center",             //   выравнивание текста (left, center, right)
                "bold": true,                  //   обычный (false) или жирный (true)
                "italic": false                //     обычный (false) или курсив (true)
              },
              "shadow": {                      // параметры тени
                "alpha": 100,                  //   прозрачность
                "color": "#000000",            //   цвет
                "angle": 45,                   //   угол смещения
                "strength": 300,               //   интенсивность
                "distance": 0,                 //   дистанция смещение
                "size": 4                      //   размер
              },
            "format": "<textformat tabstops='[34,30,65,81]' leading='-2'><font face='$FieldFont' size='14' color='{{c:t-battles|#FCFCFC}}'><b>{{t-battles%5d|----}}</b></font><tab><font face='BloodyShacky' size='13' color='{{c:xte|#FCFCFC}}'>&#61579;</font><tab><font face='BloodyShacky' size='18' color='{{c:wn|#FCFCFC}}'> {{ally?&#61468;|&#61469;}}</font><tab><font face='BloodyShacky' size='13' color='{{c:xte|#FCFCFC}}'>&#61578;</font><tab><font face='$FieldFont' size='14' color='{{c:t-rating|#FCFCFC}}'><b>{{t-rating%d~%|--%}}</b></font></textformat>"      // формат текста. См. описание макросов в readme-ru.txt
            }, 
			// Kill
            {
              "name": "Kill",                                                 // название текстового поля, ни на что не влияет
              "visible": true,                                                // false - не отображать
              "x": -0,                                                        //   положение по оси X
              "y": -26,                                                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                                      // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "#C20000",                                             // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                                                       // параметры шрифта
                "name": null,                                                 //   название
                "size": 30,                                                   //   размер
                "align": "center",                                            //   выравнивание текста (left, center, right)
                "bold": false,                                                //   обычный (false) или жирный (true)
                "italic": false                                               //     обычный (false) или курсив (true)
              },
              "shadow": {
                "angle": 45,
                "distance": 1,
                "strength": 500,
                "size": 4,
                "alpha": 90,
                "color": "#000000"                   
              },
              "format": "<font face='arial'>&#xBB;             &#xAB;</font>"            // формат текста. См. описание макросов в readme-ru.txt
            }
          ]
        }
}
