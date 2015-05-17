/**
 * Hit log (my hits calculator).
 * Лог попаданий (счетчик своих попаданий).
 */
{
  "hitLog": {
    // false - Disable.
    // false - отключить.
    "visible": true,
    // Show enemy HP left by Alt press
    // Destroyed enemies and enemies HP gets updated only when it markers become visible.
    // Markers are visible only inside 1000m side square.
    // Square with 1000 meters side is game engine restriction. Maximum marker show distance.
    // Particular enemy data will not be updated while you cant see this enemy marker or its wreck.
    // ----
    // Показывать оставшееся HP врагов по нажатию Alt
    // Уничтоженные враги и вражеское HP обновляется только, когда маркеры становятся видимыми.
    // Маркеры видимы только в квадрате со стороной в 1000м.
    // Квадрат в 1000 метров это ограничение игрового движка. Максимальная дистанция отрисовки маркеров.
    // Данные по конкретному врагу не могут быть обновлены пока не видно его маркер или обломки.
    "hpLeft": {
        // false - Disable.
        // false - отключить.
        "enabled": true,
        // Header - Only localization macros are allowed, see readme-en.txt.
        // Заголовок - допускаются только макросы перевода, см. readme-ru.txt.
        "header": "<font face='$FieldFont' size='20' color='#C20000'><u><b>{{l10n:hpLeftTitle}}</b></u></font>",
        // Row in HP list (macros allowed, see readme-en.txt).
        // Строка в списке HP (допускаются макроподстановки, см. readme-ru.txt)
        "format": "<textformat leading='-2' tabstops='[35,78,138,230]'></b><font color='#E5E5E5' size='17'></b><font color='{{c:hp-ratio}}'>{{hp}}<tab>({{hp-ratio}}&#37;<tab>| {{hp-max}})<tab><font face='BloodyShacky' size='21'>{{vtype}}</font><font>  {{vehicle}}</font></font></textformat>"
    },
    // X position (negative values - bind to right side of screen).
    // Позиция X (отрицательные значения - привязать к правой стороне экрана).
    "x": 570,
    // Y position (negative values - bind to bottom side of screen).
    // Позиция Y (отрицательные значения - привязать к нижней стороне экрана).
    "y": 950,
    // Width.
    // Ширина.
    "w": 450,
    // Height.
    // Высота.
    "h": 400,
    // Number of lines with hits. Old lines will be pushed out.
    // Количество строк с попаданиями. Устаревшие данные выталкиваются.
    "lines": 9,
    // Log direction: up - lines will be added from up to down, down - from down to up.
    // Направление лога: up - строки добавляются сверху, down - снизу.
    "direction": "down",
    // Group hits by players name.
    // Группировать попадания по имени игрока.
    "groupHitsByPlayer": false,
    // Insert order: begin - insert new values to begin, end - add to end.
    // Сортировка попаданий: begin - новые значения добавляются сверху, end - снизу.
    "insertOrder": "begin",
    // Substitution for {{dead}} macro when tank is dead.
    // Подстановка для макроса {{dead}}, когда танк умирает.
    "deadMarker": "&#61441;",
    "blowupMarker": "&#61695;",
    // Default header format (before first hit). Only localization macros are allowed, see readme-en.txt.
    // Формат заголовка по умолчанию (до первого попадания). Допускаются только макросы перевода, см. readme-ru.txt.
    "defaultHeader":  "<textformat align='right' leading='-28' tabstops='[138]'><font face='BloodyShacky' size='25' color='#FF7F00'>&#61570; </font><font face='$FieldFont' size='19' color='#D90000'><b>Config by  </b></font><font face='BloodyShacky' size='19' color='#FFCC66'><b>&#61519;</b></font><font face='BloodyShacky' size='25' color='#FF7F00'> &#61570;</font></textformat>",
    // Hits header format, including last hit (macros allowed, see readme-en.txt).
    // Формат заголовка (допускаются макроподстановки, см. readme-ru.txt).
    "formatHeader": "<u><font color='#E5E5E5'>{{l10n:Hits}}: <b><font face='BloodyShacky' color='#FCFCFC' size='29'>{{n}}</font></b> <font size='25' color='#FFFFFF'>[</font><font size='29' face='BloodyShacky' color='{{my-frags<=3?#FFB11B|{{my-frags<=5?#60FF00|{{my-frags<=6?#02C9B3|{{my-frags=7?#02C9B3|{{my-frags>=8?#D042F3}}}}}}}}}}'><b>{{my-frags|0}}</b></font><font size='25' color='#FFFFFF'>]</font>   {{l10n:Total}}: <b><font face='BloodyShacky' color='{{dmg-total<1000?#FFB11B|{{dmg-total<1800?#60FF00|{{dmg-total<2500?#02C9B3|{{dmg-total>=2500?#D042F3}}}}}}}}' size='26'>{{dmg-total}}</font></b> <font size='22' color='#FFFFFF'>[</font><font size='22' face='BloodyShacky' color='#A4FF80'><b>{{dmg-avg%d}}</b></font><font size='22' color='#FFFFFF'>]</font>    {{l10n:Last}}: <b><font face='BloodyShacky' color='#FF1E00' size='30'>{{dmg}}</font></b></font></u>",
    // List of hits format (macros allowed, see readme-en.txt).
    // Формат лога попаданий (допускаются макроподстановки, см. readme-ru.txt).
    "formatHistory": "<textformat leading='-2' tabstops='[18,80,103,148,153,222,266]'><font size='13' color='{{dead?#B17D4E|#F2F2F2}}'>&#215;{{n-player}}<tab>{{dmg-kind}}<tab>-{{dmg}}<tab>({{dmg-player}})<tab><font size='0{{dead}}'>УНИЧТОЖЕН!</font><tab><font size='0'><font size='15{{dead}}'>повредил!</font></font><tab><font face='BloodyShacky' size='19'>{{dead|&#61445;}}</font><tab><font face='BloodyShacky' size='19'>{{vtype}}</font>  {{vehicle}}</font></font></textformat>",
    // Shadow options.
    // Параметры тени.
    "shadow": {
      // Opacity.
      // Прозрачность.
      "alpha": 100,
      // Цвет.
      "color": "#000000",
      // Offset angle.
      // Угол смещения.
      "angle": 45,
      // Offset distance.
      // Дистанция смещения.
      "distance": 0,
      // Размер.
      "size": 4,
      // Intensity.
      // Интенсивность.
      "strength": 450
    }
  }
}
