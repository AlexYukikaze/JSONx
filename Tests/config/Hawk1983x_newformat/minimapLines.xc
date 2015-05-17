{
  "lines": {
       "enabled": true,
       // "inmeters": true  - дистанция линии в метрах реальной карты.
       // "inmeters": false - дистанция линии в точках миникарты. Сторона миникарты 210 точек.
       // "thickness" - толщина отрезка; "from" - начало отрезка; "to" - конец; "alpha" - прозрачность; "color" - цвет.
        "vehicle": [  // Направление корпуса своей техники.
         { "enabled": true, "from": -60, "to":   95, "inmeters": true, "thickness": 1,    "alpha":  95, "color": "0xFFFFFF"},
		 { "enabled": true, "from": 120, "to": 1500, "inmeters": true, "thickness": 4,    "alpha":  25, "color": "0x00FFFF"}
       ],
       "camera": [  // Направление камеры от своей техники.
         { "enabled": true, "from": 50,  "to": 440,  "inmeters": true, "thickness": 0.75, "alpha": 100, "color": "0xFFFF00"},
         { "enabled": true, "from": 448, "to": 492,  "inmeters": true, "thickness": 0.75, "alpha": 100, "color": "0xFFFF00"},
         { "enabled": true, "from": 492, "to": 700,  "inmeters": true, "thickness": 0.75, "alpha": 100, "color": "0xFFFF00"},
         { "enabled": true, "from": 718, "to": 1500, "inmeters": true, "thickness": 0.75, "alpha": 100, "color": "0xFFFF00"},
                   //Точки
         { "enabled": true, "from": 445, "to": 446,  "inmeters": true, "thickness": 3,    "alpha": 100, "color": "0xFFFF00"},
		 { "enabled": true, "from": 399, "to": 400,  "inmeters": true, "thickness": 3,    "alpha": 100, "color": "0xFFFF00"},
         { "enabled": false, "from": 500, "to": 501,  "inmeters": true, "thickness": 3,    "alpha": 100, "color": "0xFF0000"},
         { "enabled": true, "from": 707, "to": 708,  "inmeters": true, "thickness": 3,    "alpha": 100, "color": "0xFF0000"}
       ],
       "traverseAngle": [ // УГН могут меняться в зависимости от углов постановки машины.Подробнее по ссылке:http://goo.gl/ZqlPa
         { "enabled": true, "from": 444, "to": 446, "inmeters": true, "thickness": 3,    "alpha": 70, "color": "0x00FFFF"},
         { "enabled": true, "from": 100, "to": 145, "inmeters": true, "thickness": 0.01, "alpha":  5, "color": "0x00FFFF"},
         { "enabled": true, "from": 150, "to": 196, "inmeters": true, "thickness": 0.01, "alpha": 95, "color": "0x00FFFF"},
         { "enabled": true, "from": 200, "to": 246, "inmeters": true, "thickness": 0.01, "alpha": 95, "color": "0x00FFFF"},
         { "enabled": true, "from": 250, "to": 296, "inmeters": true, "thickness": 0.01, "alpha": 95, "color": "0x00FFFF"},
         { "enabled": true, "from": 300, "to": 378, "inmeters": true, "thickness": 0.01, "alpha": 95, "color": "0x00FFFF"},
         { "enabled": true, "from": 382, "to": 443, "inmeters": true, "thickness": 0.01, "alpha": 95, "color": "0x00FFFF"},
         { "enabled": true, "from": 447, "to": 1500,"inmeters": true, "thickness": 0.01, "alpha": 50, "color": "0x00FFFF"}
       ]
    }
}