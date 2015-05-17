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

    // Показывать оставшееся HP врагов по нажатию Alt
    // Уничтоженные враги и вражеское HP обновляется только, когда маркеры становятся видимыми.
    // Маркеры видимы только в квадрате со стороной в 1000м.
    // Квадрат в 1000 метров это ограничение игрового движка. Максимальная дистанция отрисовки маркеров.
    // Данные по конкретному врагу не могут быть обновлены пока не видно его маркер или обломки.
    "hpLeft": {
        // false - Disable.
        // false - отключить.
        "enabled": false,
        // Header - Only localization macros are allowed, see readme-en.txt.
        // Заголовок - допускаются только макросы перевода, см. readme-ru.txt.
        "header": "{{l10n:hpLeftTitle}}:", //{{l10n:hpLeftTitle}} Остаток прочности соперников
        // Row in HP list (macros allowed, see readme-en.txt).
        // Строка в списке попаданий (допускаются макроподстановки, см. readme-ru.txt)
        "format": "<textformat leading='-4' tabstops='[40,110]'><font color='{{c:hp-ratio}}'>{{hp}}</font><tab><font size='14'><font color='{{c:vtype}}'>{{vehicle}}</font><tab>{{name%.16s~..}}<font color='#FFCC66'>{{clan}}</font></font></b></textformat>"
    },

    // X position (negative values - bind to right side of screen).
    // Позиция X (отрицательные значения - привязать к правой стороне экрана).
    "x": 230,
    // Y position (negative values - bind to bottom side of screen).
    // Позиция Y (отрицательные значения - привязать к нижней стороне экрана).
    "y": -230,
    // Width.
    // Ширина.
    "w": 250,
    // Height.
    // Высота.
    "h": 230,
    // Number of lines with hits. Old lines will be pushed out.
    // Количество строк с попаданиями. Устаревшие данные выталкиваются.
    "lines": 15,
    // Log direction: up - lines will be added from up to down, down - from down to up.
    // Направление лога: up - строки добавляются сверху, down - снизу.
    "direction": "down",
    // Group hits by players name.
    // Группировать попадания по имени игрока.
    "groupHitsByPlayer": true,
    // Insert order: begin - insert new values to begin, end - add to end.
    // Сортировка попаданий: begin - новые значения добавляются сверху, end - снизу.
    "insertOrder": "end",
    // Substitution for {{dead}} macro when tank is dead.
    // Подстановка для макроса {{dead}}, когда танк умирает.
    "deadMarker": "<font face='Wingdings' size='16' color='#FF2222'>N</font>",
    "blowupMarker": "<font face='Wingdings' size='16' color='#FF2222'>M</font>",
    // Default header format (before first hit). Macros IS NOT allowed.
    // Формат заголовка по умолчанию (до первого попадания). Макросы НЕ допускаются.
    "defaultHeader":  "<font size='14'><font color='#DDDDDD'>{{l10n:Hits}}:</font> ×0</font>",
    // Hits header format, including last hit (macros allowed, see readme-en.txt).
    // Формат заголовка (допускаются макроподстановки, см. readme-ru.txt).
    "formatHeader":  "<font size='14'><font color='#DDDDDD'>{{l10n:Hits}}:</font> ×{{n}} <b> {{l10n:Total}}: <font color='#6BFF62'>{{dmg-total}}</font></b> <font color='#DDDDDD'> {{l10n:Last}}:</font> <font color='{{c:dmg-kind}}'><b>{{dmg}}</b> {{dead}}</font></font>",
    // List of hits format (macros allowed, see readme-en.txt).
    // Формат лога попаданий (допускаются макроподстановки, см. readme-ru.txt)
    "formatHistory": "<textformat leading='-4' tabstops='[20,50,95,155]'><font size='13'>×{{n-player}}:</font><tab><font size='14'><font color='#6BFF62'><b>{{dmg-player}}</b></font><tab>| <font color='{{c:dmg-kind}}'><b>{{dmg}}</b></font><tab><font color='{{c:vtype}}'>{{vehicle-short}} {{dead}}</font><tab>{{name%.8s~..}}</font></textformat>",
    // Shadow options.
    // Параметры тени.
    "shadow": {
      // Opacity.
      // Прозрачность.
      "alpha": 100,
      // Цвет.
      "color": "0x000000",
      // Offset angle.
      // Угол смещения.
      "angle": 45,
      // Offset distance.
      // Дистанция смещения.
      "distance": 0,
      // Размер.
      "size": 5,
      // Intensity.
      // Интенсивность.
      "strength": 150
    }
  }
}
