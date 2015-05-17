/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "statisticForm": {
    // true - Enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": { "show": false, "x": 0, "y": 6, "xr": 0, "yr": 6, "w": 16, "h": 16, "alpha": 90 },
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
    "formatRightVehicle": ${"statisticForm.formatLeftVehicle"}
  }
}
