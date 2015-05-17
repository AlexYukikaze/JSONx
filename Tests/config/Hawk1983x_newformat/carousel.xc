/**
 * Parameters for tank carousel
 * Параметры карусели танков
 */
{
  "carousel": {
    // false - Disable customizable carousel.
    // false - Отключить настраиваемую карусель.
    "enabled": true,
	// Scale of carousel cells.
    // Масштаб ячеек карусели.
    "zoom": 0.9,
	// Number of rows at carousel.
    // Количество рядов карусели.
    "rows": 2,
	// Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "padding": { "horizontal": 2, "vertical": 2 },
	// true - show filters even if all tanks fit on the screen.
    // true - показывать фильтры даже если все танки помещаются на экране.
	"alwaysShowFilters": false,
	// true - hide cell "Buy tank".
    // true - скрыть ячейку "Купить танк".
	"hideBuyTank": false,
	// true - hide cell "Buy slot".
    // true - скрыть ячейку "Купить слот".
    "hideBuySlot": false,
	// Visibility filters.
    // Видимость фильтров.
	"filters": {
      "nation":   { "enabled": true },
      "type":     { "enabled": true },
      "level":    { "enabled": true },
      "prefs":    { "enabled": true },
      "favorite": { "enabled": true }
    },
	// Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
	  // "visible"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "visible": true, "dx": 3, "dy": 0, "alpha": 100, "scale": 1 },
	  // Vehicle level.
      // Уровень техники
      "level":    { "visible": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
	  // todo: english description
      // Иконка не сбитого кратного опыта за первую победу в день.
      "xp":       { "visible": true, "dx": 9, "dy": 0, "alpha": 100, "scale": 1 },
	  // todo: english description
      // Иконка не сбитого опыта за первую победу в день.
      "multiXp":  { "visible": true, "dx": 9, "dy": 0, "alpha": 100, "scale": 1 },
	  // Vehicle name.
      // Название танка.
      "tankName": { "visible": true, "dx": 0, "dy": 3, "alpha": 100, "scale": 0.9 },
	  // Status text (Crew incomplete, Repairs required)
      // Статусный текст (Неполный экипаж, Требуется ремонт).
      "statusText": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock":   { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
	// Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
	   // выделение ячейки:
	   { "x": -1, "y": -2, "w": 162, "h": 3, "bgColor": "#60FF00", "alpha": "{{v.selected?30|0}}" },
	   { "x": -1, "y": 100, "w": 162, "h": 3, "bgColor": "#60FF00", "alpha": "{{v.selected?30|0}}" },
	   { "x": -2, "y": 0, "w": 3, "h": 100, "bgColor": "#60FF00", "alpha": "{{v.selected?30|0}}" },
	   { "x": 160, "y": 0, "w": 3, "h": 100, "bgColor": "#60FF00", "alpha": "{{v.selected?30|0}}" },

	   { "x": -1, "y": -2, "w": 162, "h": "{{v.selected?0|2}}", "bgColor": "{{v.premium?#FF884C|#FFDD99}}", "alpha": "{{v.premium?20|10}}" },
	   { "x": -1, "y": 100, "w": 162, "h": "{{v.selected?0|2}}", "bgColor": "{{v.premium?#FF884C|#FFDD99}}", "alpha": "{{v.premium?20|10}}" },
	   { "x": -2, "y": 0, "w": 3, "h": "{{v.selected?0|100}}", "bgColor": "{{v.premium?#FF884C|#FFDD99}}", "alpha": "{{v.premium?20|10}}" },
	   { "x": 160, "y": 0, "w": 3, "h": "{{v.selected?0|100}}", "bgColor": "{{v.premium?#FF884C|#FFDD99}}", "alpha": "{{v.premium?20|10}}" },
	   // Знак мастерства.
	   { "x": -1.3, "y": 10, "w": 32, "h": 34, "src": "cfg://Hawk1983x_newformat/myicons/v.mastery/class_icons_{{v.mastery}}.png" }, 
	   // фон снаряда
	   { "x": 90, "y": 37, "format": "<img src='img://gui/maps/icons/ammopanel/ammo/NO_ARMOR_PIERCING_HE.png' width='22' height='22'>" },
       // снаряд(прем.|норм.)	   
	   { "x": 90, "y": 37, "format": "<img src='img://gui/maps/icons/shell/{{v.premium?HIGH_EXPLOSIVE_PREMIUM|ARMOR_PIERCING_HE}}.png' width='22' height='22'>" }, 
       // щит	   
	   { "x": 93, "y": 56, "format": "<img src='img://gui/maps/icons/library/prebattleInviteIcon-1.png' width='15' height='15'>" }, 
	   // скрещенные мечи(прем|норм)
	   { "x": 93, "y": 56,  "format":"<img src='img://gui/maps/icons/library/{{v.premium?Tournament}}BattleResultIcon-1.png' width='15' height='15'>" },
	   // картинка для макроса {{xte}}
       { "x": 93, "y": 21.5,  "format":"<img src='img://gui/maps/icons/statistic/rating24.png' width='17' height='17'>" },
	   { "x": 93, "y": 21.5,  "format":"<img src='img://gui/maps/icons/statistic/rating.png' width='15' height='15'>" },
	   // уровень боев
	   { "x": 63, "y": -3,  "align": "center",  "format": "<font face='BloodyShacky'><font  color='#777777'>{{v.battletiermin}}</font>..<font  color='#D9A300'>{{v.battletiermax}}</font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6} },
	   // уровень танка
	   { "x": 23, "y": -1,  "format": "<font size='13' color='#FFFFFF'><b>{{v.rlevel}}</b></font>", "shadow":{"angle": 45, "alpha": 100, "blur": 2, "strength": 6} }, 
	   // % побед на танке
	   { "x": 3, "y": 38.5,  "format": "<font size='15' color='{{v.c_winrate}}'><b>{{v.winrate%.2d~%}}</b></font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6} }, 
	   // кол-во боев на танке
	   { "x": 128, "y": 54, "align": "center", "format": "<font size='15' color='{{v.c_battles}}'><b>{{v.battles}}</b></font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6} }, 
	   // ср. урон на танках >6 lvl  и ср.эфективный урон на танках <6 lvl
	   { "x": "{{v.level<=5?122|127}}", "y": 37,  "align": "center", "format": "<font size='15' color='{{v.level<=5?{{v.c_tdv}}|{{v.c_tdb}}}}'><b>{{v.level<=5?{{v.tdv%4d}}|{{v.tdb%4d}}}}</b></font>", "shadow": {"angle": 45, "alpha": 100, "blur": 2, "strength": 6} },
	   // эффективность на танке {{xTE}}
	   { "x": 128, "y":19.5, "align": "center", "format": "<font color='{{v.c_xte}}'><b>{{v.xte}}</b></font>", "shadow":{"angle": 45, "alpha": 100, "blur": 2, "strength": 6} }, 
	   {}
       ],
    // Order of nations.
    // Порядок наций.
    //"nations_order": ["ussr", "germany", "usa", "france", "uk", "china", "japan"],
    "nations_order": ["ussr", "germany", "usa", "france", "uk", "china", "japan"],
    // Order of types of vehicles.
    // Порядок классов техники.
    "types_order":   ["lightTank", "mediumTank", "heavyTank", "AT-SPG", "SPG"],
    // Tank sorting criteria, available options: (minus = reverse order)
    // Критерии сортировки танков, доступные значения: (минус = в обратном порядке)
    // "nation", "type", "level", "maxBattleTier", "premium", "-level", "-maxBattleTier", "-premium"
    "sorting_criteria": ["nation", "type", "level"],
    // Suppress the tooltips for tanks in carousel
    // Убрать подсказки к танкам в карусели
    "suppressCarouselTooltips": false
  }
}
