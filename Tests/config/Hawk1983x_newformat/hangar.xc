/**
 * Parameters for hangar
 * Параметры ангара
 */
{
  "hangar": {
    // true - Show XWN8 instead of XEFF in company windows
    // true - показывать XWN8 вместо XEFF в окнах рот
    "xwnInCompany": true,
    // true - enable locker for gold
    // true - включить замок для золота
    "enableGoldLocker": true,
    // true - enable locker for free XP
    // true - включить замок для свободного опыта
    "enableFreeXpLocker": false,
    // true - Use credits instead of gold as default currency for ammo and equipment
    // true - Использовать кредиты, а не золото как валюту по умолчанию для снарядов и снаряжения
    "defaultBoughtForCredits": true,
    // true - Hide price button in tech tree
    // true - Прятать кнопку с ценой в дереве исследований
    "hidePricesInTechTree": false,
    // true - Show mastery mark in tech tree
    // true - Показывать знак мастерства в дереве исследований
    "masteryMarkInTechTree": true,
    // true - Allow to consider the exchange of experience with gold in tech tree
    // true - Разрешить учитывать обмен опыта за голду в дереве исследований
    "allowExchangeXPInTechTree": true,
    // true - enable crew auto return function
    // true - включить функцию автовозврата экипажа
     "enableCrewAutoReturn": true,
    // true - Enable widgets
    // true - включить виджеты
    "widgetsEnabled": false,
    "pingServers": {
      // true - Enable display of ping to the servers
      // true - показывать пинг до серверов
      "enabled": true,
      // Update interval, in ms
      // Интервал обновления, в мс
      "updateInterval": 5000,
      // Axis field coordinates
      // Положение поля по осям
      "x": 2,
      "y": 49,
      // Transparecy
      // Прозрачность от 0 до 100
      "alpha": 100,
      // Server to responce time text delimiter
      // Разделитель сервера от времени отклика
      "delimiter": ": ",
      // Maximum number of column rows
      // Максимальное количество строк одной колонки
      "maxRows": 2,
      // Gap between columns
      // Пространство между колонками
      "columnGap": 3,
      // Leading between lines.
      // Пространство между строками
      "leading": -2,
	  // true - place at top of other windows, false - at bottom.
      // true - отображать поверх остальных окон, false - под.
      "topmost": true,
      // Text style
      // Стиль текста
      "fontStyle": {
        // Font name
        // Название шрифта
        "name": "$FieldFont",
        "size": 15,      // Размер
        "bold": true,    // Жирный
        "italic": false, // Курсив
        // Different colors depending on server responce time
        // Разные цвета в зависимости от времени отклика сервера
        "color": {
          "great": "0x60FF00", // Отличный
          "good": "0xA2FF9A",  // Хороший
          "poor": "0xF8F400",  // Так себе
          "bad": "0xFE7903"    // Плохой
        }
      },
      // Threshold values defining responce quality
      // Пороговые значения, определеяющие качество отклика
      "threshold": {
        // Below this value responce is great
        // До этого значения отклик отличный
        "great": 30,
        // Below this value responce is good
        // До этого значения отклик хороший
        "good": 60,
        // Below this value responce is poor
        // До этого значения отклик так себе
        "poor": 100
        // Values above define bad responce
        // Значения более считаются плохим откликом
      },
      // Параметры тени
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 45,
        "alpha": 100,
        "blur": 4,
        "strength": 1.8
      }
    },
    // Show/hide server info or change its parameters
    // Показать/спрятать информацию о сервере, или изменить ее параметры
    "serverInfo": {
      // Show server info in hangar.
      // Показывать информацию о сервере в ангаре.
      "enabled": true,
      // Transparency in percents [0..100].
      // Прозрачность в процентах [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      // Угол поворота в градусах [0..360].
      "rotation": 0
    },
	// Parameters for tank carousel
    // Параметры карусели танков
    "carousel": ${"carousel.xc":"carousel"},
	//Parameters for clock in hangar
    // Параметры часов в ангаре
	"clock": ${"clock.xc":"clock"}
  }
}
