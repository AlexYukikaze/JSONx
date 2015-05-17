﻿/**
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
    "showPostmortemTips": true,
    // false - disable highlighting of own vehicle icon and squad.
    // false - отключить подсветку иконки своего танка и взвода.
    "highlightVehicleIcon": true,
    // true - enable {{hp*}} macros ability in players panels and minimap. WARNING: performance expensive
    // true - включить возможность {{hp*}} макросов в ушах и на миникарте. ВНИМАНИЕ: может понизить производительность
    "allowHpInPanelsAndMinimap": true,
    // true - enable {{marksOnGun}} macro in players panels and minimap. WARNING: performance expensive
    // true - включить макрос {{marksOnGun}} в ушах и на миникарте. ВНИМАНИЕ: может понизить производительность
    "allowMarksOnGunInPanelsAndMinimap": false,
    // Format of clock on the Debug Panel (near FPS). Format: Y:year, M:month, D:day, H:hour, N:minutes, S:seconds. "" - remove clock.
    // Формат часов на экране панели отладки (возле FPS). Формат: Y:год, M:месяц, D:день, H:часы, N:минуты, S:секунды. "" - убрать часы.
    "clockFormat": "H:N",
    // Path to clan icons folder relative to res_mods/xvm/res.
    // Путь к папке иконок кланов относительно res_mods/xvm/res.
    "clanIconsFolder": "clanicons/",
    // GUI elements settings (experts only)
    // Настройки графических элементов (только для экспертов!)
    "elements": ${"elements.xc":"elements"}
  },
  // Frag counter panel at top side of battle windows interface.
  // Панель счёта в бою.
  "fragCorrelation": {
    // true - hide textfields "Allies | Enemies".
    // true - спрятать два текстовых поля "Союзники | Противники".
    "hideTeamTextFields": true
  },
  // Ingame crits panel by "expert" skill.
  // Внутриигровая панель критов от навыка "эксперт".
  "expertPanel": {
    // Delay for panel disappear. Original value was 5.
    // Задержка исчезновения панели. Оригинальное значение было 5.
    "delay": 15,
    // Panel scaling. Original value was 100.
    // Увеличение панели. 100 в оригинале.
    "scale": 150
  }
}
