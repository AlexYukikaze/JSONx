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
    "clanIcon": {
      "show": true,
      "x": -355,
      "y": 5,
      "xr": -355,
      "yr": 3.5,
      "w": 16,
      "h": 16,
      "alpha": 90
    },
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftNick": "<font face='BloodyShacky' size='17' color='{{xvm-user}}'>{{xvm-user?&#61571;|   }}</font> <font color='#FCFCFC'><font face='a_RubricaCn' alpha='{{alive?#FF|#80}}' color='{{tk?#00EAFF|{{player?#FFCC66|{{squad?#FF914C}}}}}}'>{{.myname.{{name}}|{{name%.12s~..}}}}</font></font> <font  size='11' face='a_RubricaCn' alpha='{{alive?#FF|#80}}' color='{{clannb=EWOKI?#00B386|{{clannb=EW0KS?#0000FF|{{clannb=EW0KY?#B30000|{{clannb=EWOK5?#00FF00|{{clannb=TOYS?#FF0000|#ff9900}}}}}}}}}}'>{{clannb}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
	"formatRightNick": "<font color='#FCFCFC'><font face='a_RubricaCn' alpha='{{alive?#FF|#80}}'><font size='11' color='{{clannb=EWOKI?#00B386|{{clannb=EW0KS?#0000FF|{{clannb=EW0KY?#B30000|{{clannb=EWOK5?#00FF00|{{clannb=TOYS?#FF0000|#ff9900}}}}}}}}}}'>{{clannb}}</font> <font face='a_RubricaCn' size='14'>{{name%.12s~..}}</font></font></font></font> <font face='BloodyShacky' size='17' color='{{xvm-user}}'>{{xvm-user?&#61571;|   <font size='0'>.</font>}}</font>",
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftVehicle": "<font face='mono' size='{{xvm-stat?14|0}}'><font alpha='{{alive?#FF|#80}}'><font color='{{c:kb|#FCFCFC}}'><b>{{kb%d~k|-k}}</b></font> <font color='{{c:wn8|#FCFCFC}}'><b>{{wn8%4d|----}}</b></font> <font color='{{c:winrate|#FCFCFC}}'><b>{{winrate%2d~%|--%}}</b></font></font><b> |</b><font face='mono' size='{{xvm-stat?14|0}}'><font alpha='{{alive?#FF|#80}}'><font color='{{c:t-battles|#FCFCFC}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|--h}}}}</b></font> <font color='{{c:t-winrate|#FCFCFC}}'><b>{{t-winrate%2d~%|--%}}</b></font></font></font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightVehicle": "<font face='mono' size='{{xvm-stat?{{battletype?14|0}}|0}}'><font alpha='{{alive?#FF|#80}}'><font color='{{c:t-battles|#FCFCFC}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|--h}}}}</b></font> <font color='{{c:t-winrate|#FCFCFC}}'><b>{{t-winrate%2d~%|--%}}</b></font></font><b> | </b><font alpha='{{alive?#FF|#80}}'><font face='mono' size='{{xvm-stat?{{battletype?14|0}}|0}}'><font color='{{c:winrate|#FCFCFC}}'><b>{{winrate%2d~%|--%}}</b></font> <font color='{{c:wn8|#FCFCFC}}'><b>{{wn8%4d|----}}</b></font> <font color='{{c:kb|#FCFCFC}}'><b>{{kb%d~k|-k}}</b></font></font></font>"
  }
}
