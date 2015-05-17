/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "battleLoading": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "Y-m-d H:i:s",
	// true - Enable display of battle tier.
	// true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - Disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": {
      // false - Disable Team/Clan logos in Battle Loading Screen.
      // false - не отображать иконки игрока/клана в окне загрузки боя.
      "show": true,
      // Position on the X axis, relative to the vehicle icon.
      // Положение по оси X оносительно иконки танка.
      "x": -355,
      // Position on the Y axis, relative to the vehicle icon.
      // Положение по оси Y оносительно иконки танка.
      "y": 5,
      // Position on the X axis for right side (positive values run to the *inside* of the table).
      // Положение по оси X для правых ушей (положительные значения поместят иконку *внутрь* панели).
      "xr": -355,
      // Position on the Y axis for right side.
      // Положение по оси Y для правых ушей.
      "yr": 5,
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
    "darkenNotReadyIcon": true,
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftNick": "<font face='BloodyShacky' size='17' color='{{xvm-user}}'>{{xvm-user?&#61571;|   }}</font> <font color='#FCFCFC'><font face='a_RubricaCn' alpha='{{ready?#FF|#80}}' color='{{tk?#00EAFF|{{player?#FFCC66|{{squad?#FF914C}}}}}}'>{{.myname.{{name}}|{{name%.12s~..}}}}</font></font> <font  size='11' face='a_RubricaCn' alpha='{{ready?#FF|#80}}'  color='{{clannb=EWOKI?#00B386|{{clannb=EW0KS?#0000FF|{{clannb=EW0KY?#B30000|{{clannb=EWOK5?#00FF00|{{clannb=TOYS?#FF0000|#ff9900}}}}}}}}}}'>{{clannb}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightNick": "<font color='#FCFCFC'><font face='a_RubricaCn' alpha='{{ready?#FF|#80}}'><font size='11' color='{{clannb=EWOKI?#00B386|{{clannb=EW0KS?#0000FF|{{clannb=EW0KY?#B30000|{{clannb=EWOK5?#00FF00|{{clannb=TOYS?#FF0000|#ff9900}}}}}}}}}}'>{{clannb}}</font> <font face='a_RubricaCn' size='14'>{{name%.12s~..}}</font></font></font></font> <font face='BloodyShacky' size='17' color='{{xvm-user}}'>{{xvm-user?&#61571;|   <font size='0'>.</font>}}</font>",
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftVehicle": "<font face='mono' size='{{xvm-stat?14|0}}'><font alpha='{{ready?#FF|#80}}'><font color='{{c:kb|#FCFCFC}}'><b>{{kb%d~k|-k}}</b></font> <font color='{{c:wn8|#FCFCFC}}'><b>{{wn8%4d|----}}</b></font> <font color='{{c:winrate|#FCFCFC}}'><b>{{winrate%2d~%|--%}}</b></font></font><b> |</b><font face='mono' size='{{xvm-stat?14|0}}'><font alpha='{{ready?#FF|#80}}'><font color='{{c:t-battles|#FCFCFC}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|--h}}}}</b></font> <font color='{{c:t-winrate|#FCFCFC}}'><b>{{t-winrate%2d~%|--%}}</b></font></font></font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightVehicle": "<font face='mono' size='{{xvm-stat?14|0}}'><font alpha='{{ready?#FF|#80}}'><font color='{{c:t-battles|#FCFCFC}}'><b>{{t-hb>=50?{{t-kb%2d~k}}|{{t-hb%2d~h|--h}}}}</b></font> <font color='{{c:t-winrate|#FCFCFC}}'><b>{{t-winrate%2d~%|--%}}</b></font></font><b> | </b><font alpha='{{ready?#FF|#80}}'><font face='mono' size='{{xvm-stat?14|0}}'><font color='{{c:winrate|#FCFCFC}}'><b>{{winrate%2d~%|--%}}</b></font> <font color='{{c:wn8|#FCFCFC}}'><b>{{wn8%4d|----}}</b></font> <font color='{{c:kb|#FCFCFC}}'><b>{{kb%d~k|-k}}</b></font></font></font>"
  }
}
