/**
 * Parameters for tank carousel
 * Параметры карусели танков
 */
{
// подстановка для тени
  "carousel_shadow": {
    "color": "0x000000",    //   цвет
    "alpha": 75,            //   прозрачность
    "blur": 4,              //   размер
    "strength": 6,          //   интенсивность
    "distance": 0,          //   дистанция смещения
    "angle": 45             //   угол смещения
  },

  "carousel": {
    // false - Disable customizable carousel.
    // false - Отключить настраиваемую карусель.
    "enabled": true,
    // Scale of carousel cells.
    // Масштаб ячеек карусели.
    "zoom": 1,
    // Number of rows at carousel.
    // Количество рядов карусели.
    "rows": 2,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "padding": {
        "horizontal": 5,    // по горизонтали
        "vertical": 2       // по вертикали
    },
    // true - show filters even if all tanks fit on the screen.
    // true - показывать фильтры даже если все танки помещаются на экране.
    "alwaysShowFilters": true,
    // true - hide cell "Buy tank".
    // true - скрыть ячейку "Купить танк".
    "hideBuyTank": false,
    // true - hide cell "Buy slot".
    // true - скрыть ячейку "Купить слот".
    "hideBuySlot": false,
    // Visibility filters.
    // Видимость фильтров.
    "filters": {
      // false - hide filter.
      // false - скрыть фильтр.
      "nation":   { "enabled": true },  // nation           / страна
      "type":     { "enabled": true },  // vehicle class    / тип техники
      "level":    { "enabled": true },  // vehicle level    / уровень техники
      "favorite": { "enabled": true },  // favorite tanks   / основные танки
      "prefs":    { "enabled": true }   // other filters    / другие фильтры
    },
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "visible"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "visible": true,  "dx": 0, "dy":  0, "alpha": 100, "scale": 1.0 },
      // Vehicle level.
      // Уровень техники
      "level":    { "visible": false, "dx": 0, "dy":  0, "alpha": 100, "scale": 1.0 },
      // todo: english description
      // Иконка не сбитого кратного опыта за первую победу в день.
      "multiXp":  { "visible": true,  "dx": 0, "dy":  0, "alpha": 100, "scale": 1.0 },
      // todo: english description
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "visible": true,  "dx": 0, "dy":  0, "alpha": 100, "scale": 1.0 },
      // Vehicle name.
      // Название танка.
      "tankName": { "visible": true,  "dx": 0, "dy": -3, "alpha": 100, "scale": 1.17647 }
    },
    // Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
        // Уровень танка и уровень боев (рандом и во взводе)
        {
            "x": 21,
            "y": 0,
            "format": "<font face='$TextFont' size='11' color='{{v.premium?#FFB256|#FFFFFF}}'>{{v.rlevel}} <font face='Consolas' size='13'>→</font> <font size='10'>{{v.battletiermin}}..{{v.battletiermax}}</font></font>",
            "shadow": ${"carousel_shadow"}
        },
        // Sign of mastery
        // Знак мастерства
        {
            "x": -1,
            "y": 10,
            "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='23' height='23'>"
        },
        // Процент побед
        {
            "x": 21,
            "y": 14,
            "format": "<font face='$TextFont' size='{{v.battles?12|0}}' color='{{v.c_winrate|#DDDDDD}}'>{{v.winrate%.1f~%|--%}}</font>",
            "shadow": ${"carousel_shadow"}
        },
        // Количество боев на танке
        { // иконка мечи
            "x": 1,
            "y": 29,
            "format": "<img src='img://gui/maps/icons/library/BattleResultIcon-1.png{{v.battles?|-}}' width='16' height='16'>"
        },
        { // количество боев
            "x": 21,
            "y": 29,
            "format": "<font face='$TextFont' size='{{v.battles?12|0}}' color='#DDDDDD'>{{v.battles|-}}</font>",
            "shadow": ${"carousel_shadow"}
        },
        // Выделение выбранного танка
        {
            "x": -1,
            "y": -1,
            "w": 3,
            "h": 250,
            "borderColor": "0x5E6A32", "alpha": "{{v.selected?100|0}}"
        },
        {
            "x": -1,
            "y": -1,
            "w": 350,
            "h": 3,
            "borderColor": "0x5E6A32", "alpha": "{{v.selected?100|0}}"
        }
    ]
  }
}
