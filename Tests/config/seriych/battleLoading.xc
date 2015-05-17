/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "battleLoading": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "Ве Нарру :-)",
    // true - enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": {
      // false - Disable Team/Clan logos in Battle Loading Screen.
      // false - не отображать иконки игрока/клана в окне загрузки боя.
      "show": false,
      // Position on the X axis, relative to the vehicle icon.
      // Положение по оси X относительно иконки танка.
      "x": 0,
      // Position on the Y axis, relative to the vehicle icon.
      // Положение по оси Y относительно иконки танка.
      "y": 6,
      // Position on the X axis for right side (positive values run to the *inside* of the table).
      // Положение по оси X для правых ушей (положительные значения поместят иконку *внутрь* панели).
      "xr": 0,
      // Position on the Y axis for right side.
      // Положение по оси Y для правых ушей.
      "yr": 6,
      // Width of the Team/Clan logo.
      // Ширина иконки игрока/клана.
      "w": 16,
      // Height of the Team/Clan logo.
      // Высота иконки игрока/клана.
      "h": 16,
      // Transparency of the Team/Clan logo.
      // Прозрачность иконки игрока/клана.
      "alpha": 90
    },
    // false - disable highlight of icons during battle start depends on ready state.
    // false - отключить затемнение иконки не загрузившегося игрока.
    "darkenNotReadyIcon": false,
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftNick": "<font alpha='{{alive?#FF|#80}}'><font face='Consolas' size='13' color='{{c:avglvl}}'>{{avglvl%d|-}} </font><font face='$TextFont' size='12'><font size='{{player?0}}'>{{name%.14s~..}}</font><font size='{{player|0}}'>{{name%.12s~..}}</font><font size='11' color='#FFCC66'>{{clan}}</font></font></font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightNick": "<font alpha='{{alive?#FF|#80}}'><font face='$TextFont' size='12'>{{name%.14s~..}}<font size='11' color='#FFCC66'>{{clan}}</font></font><font face='Consolas' size='13' color='{{c:avglvl}}'> {{avglvl%d|-}}</font></font>",
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftVehicle": "<font alpha='{{alive?#FF|#80}}'><font face='Consolas' size='13'><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> <font color='{{c:t-battles}}'>{{t-hb%2d~h|--h}}</font> <font size='14'><b><font color='{{c:xwn8}}'>{{xwn8%2s|--}}</font></b></font> <font color='{{c:rating}}'>{{rating%2d~%|--%}}</font> <font color='{{c:t-rating}}'>{{t-rating%2d~%|--%}}</font></font></font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightVehicle": ${"battleLoading.formatLeftVehicle"}
  }
}
