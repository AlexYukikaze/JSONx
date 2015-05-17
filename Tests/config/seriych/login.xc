/**
 * Parameters for login screen
 * Параметры экрана логина
 */
{
  "login": {
    // Skip intro movie
    // Пропустить вступительное видео
    "skipIntro": true,
    // Save last server
    // Сохранять последний сервер
    "saveLastServer": false,
    // Auto enter to the game
    // Автоматический вход в игру
    "autologin": false,
    // Auto confirm old replays playing
    // Автоматически подтверждать проигрывание старых реплеев
    "confirmOldReplays": true,
    // Ping servers
    // Пинг серверов
    "pingServers": {
      // true - Show ping to the servers
      // true - показывать пинг до серверов
      "enabled": true,
      // Update interval, in ms
      // Интервал обновления, в мс
      "updateInterval": 2000,
      // Axis field coordinates
      // Положение поля по осям
      "x": 315,
      "y": 600,
      // Transparency
      // Прозрачность от 0 до 100
      "alpha": 80,
      // Server to response time text delimiter
      // Разделитель сервера от времени отклика
      "delimiter": ": ",
      // Maximum number of column rows
      // Максимальное количество строк одной колонки
      "maxRows": 10,
      // Gap between columns
      // Пространство между колонками
      "columnGap": 10,
      // Leading between lines.
      // Пространство между строками
      "leading": 0,
      // Text style
      // Стиль текста
      "fontStyle": {
        // Font name
        // Название шрифта
        "name": "Arial",
        "size": 14, // Размер
        "bold": true,  // Жирный
        "italic": false, // Курсив
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
    }
  }
}
