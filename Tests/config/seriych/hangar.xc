/**
 * Parameters for hangar
 * Параметры ангара
 */
{
  "hangar": {
    // true - Show XWN8 instead of XEFF in company windows
    // true - показывать XWN8 вместо XEFF в окнах рот
    "xwnInCompany": true,
    // true - Show mastery mark in tech tree
    // true - Показывать знак мастерства в дереве исследований
    "masteryMarkInTechTree": true,
    // true - Hide price button in tech tree
    // true - Прятать кнопку с ценой в дереве исследований
    "hidePricesInTechTree": true,
    // true - Enable widgets
    // true - включить виджеты
    "widgetsEnabled": true,
    // Ping servers
    // Пинг серверов
    "pingServers": {
      // true - Enable display of ping to the servers
      // true - показывать пинг до серверов
      "enabled": true,
      // Update interval, in ms
      // Интервал обновления, в мс
      "updateInterval": 3000,
      // Axis field coordinates
      // Положение поля по осям
      "x": 3,
      "y": 53,
      // Transparency
      // Прозрачность от 0 до 100
      "alpha": 80,
      // Server to response time text delimiter
      // Разделитель сервера от времени отклика
      "delimiter": "\n<font size='6'> </font>",
      // Maximum number of column rows
      // Максимальное количество строк одной колонки
      "maxRows": 2,
      // Gap between columns
      // Пространство между колонками
      "columnGap": 5,
      // Leading between lines.
      // Пространство между строками
      "leading": 0,
      // true - place at top of other windows, false - at bottom.
      // true - отображать поверх остальных окон, false - под.
      "topmost": true,
      // Text style
      // Стиль текста
      "fontStyle": {
        // Font name
        // Название шрифта
        "name": "$TextFont",
        "size": 12,         // Размер
        "bold": false,      // Жирный
        "italic": false,    // Курсив
        // Different colors depending on server response time
        // Разные цвета в зависимости от времени отклика сервера
        "color": {
          "great": "0x22FF22",  // Отличный
          "good":  "0x77FF66",  // Хороший
          "poor":  "0xFFFF44",  // Так себе
          "bad":   "0xFF2222"   // Плохой
        }
      },
      // Threshold values defining response quality
      // Пороговые значения, определяющие качество отклика
      "threshold": {
        // Below this value response is great
        // До этого значения отклик отличный
        "great": 30,
        // Below this value response is good
        // До этого значения отклик хороший
        "good": 60,
        // Below this value response is poor
        // До этого значения отклик так себе
        "poor": 100
        // Values above define bad response
        // Значения более считаются плохим откликом
      },
      // Параметры тени
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 0,
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
    },
    // Parameters for tank carousel
    // Параметры карусели танков
    "carousel": ${"carousel.xc":"carousel"},
    // Parameters for hangar clock
    // Параметры часов в ангаре
    "clock": ${"clock.xc":"clock"}
  }
}
