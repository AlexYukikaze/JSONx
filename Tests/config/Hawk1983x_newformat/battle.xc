/**
 * General parameters for the battle interface.
 * Общие параметры боевого интерфейса.
 */
{
  "battle": {
    // false - Disable tank icon mirroring (good for alternative icons).
    // false - отключить зеркалирования иконок танков (полезно для альтернативных иконок).
    "mirroredVehicleIcons": false,
    // false - Disable pop-up panel at the bottom after death.
    // false - отключить всплывающую внизу панель после смерти.
    "showPostmortemTips": false,
    // false - disable highlighting of own vehicle icon and squad.
    // false - отключить подсветку иконки своего танка и взвода.
    "highlightVehicleIcon": true,
	// true - enable {{spotted}} macro in players panels and minimap. WARNING: performance expensive
    // true - включить макрос {{spotted}} в ушах и на миникарте. ВНИМАНИЕ: может понизить производительность
    "allowSpottedStatus": true,
	// true - enable {{hp*}} macros in players panels and minimap. WARNING: performance expensive
    // true - включить {{hp*}} макросы в ушах и на миникарте. ВНИМАНИЕ: может понизить производительность
   "allowHpInPanelsAndMinimap": false,
    // true - enable {{gun-marks}} macro in players panels and minimap. WARNING: performance expensive
    // true - включить макрос {{gun-marks}} в ушах и на миникарте. ВНИМАНИЕ: может понизить производительность
    "allowGunMarksOnGunInPanelsAndMinimap": false,
    // Format of clock on the Debug Panel (near FPS). Format: Y:year, M:month, D:day, H:hour, N:minutes, S:seconds. "" - remove clock.
    // Формат часов на экране панели отладки (возле FPS). Формат: Y:год, M:месяц, D:день, H:часы, N:минуты, S:секунды. "" - убрать часы.
   "clockFormat": " <font face='a_RubricaCn' size='17' color='#B30000'><b>D/M/Y  <font><b>H:N:</b></font><font color='#FFFF00'><b>S</b></font></font>",
    // Path to clan icons folder relative to res_mods/xvm/res.
    // Путь к папке иконок кланов относительно res_mods/xvm/res.
    "clanIconsFolder": "clanicons/",
    // Path to sixth sense icon ("" for original icon).
    // Путь к иконке 6-го чувства ("" для оригинальной иконки).
    "sixthSenseIcon": "xvm://res/SixthSense.png",
    // GUI elements settings (experts only) Snippet
    // Настройки графических элементов (только для экспертов!) Снипеты
    "elements": ${"elements.xc":"elements"}
  },
  // Frag counter panel at top side of battle windows interface.
  // Панель счёта в бою.
  "fragCorrelation": {
    // true - hide textfields "Allies | Enemies".
    // true - cпрятать два текстовых поля "Союзники | Противники".
    "hideTeamTextFields": false,
    // true - show quantity of alive instead of dead
    // true - показывать количество живых танков вместо убитых
    "showAliveNotFrags": false
  },
  // Ingame crits panel by "expert" skill.
  // Внутриигровая панель критов от навыка "эксперт".
  "expertPanel": {
    // Delay for panel disappear. Original value was 5.
    // Задержка исчезновения панели. Оригинальное значение было 5.
    "delay": 15,
    // Panel scaling. Original value was 100.
    // Увеличение панели. 100 в оригинале.
    "scale": 100
  }
}
