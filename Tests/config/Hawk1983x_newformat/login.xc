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
    "saveLastServer": true,
    // Auto enter to the game
    // Автоматический вход в игру
    "autologin": true,
	// Auto confirm old replays playing
    // Автоматически подтверждать проигрывание старых реплеев
    "confirmOldReplays": true,
    // Ping servers; 
    // Пинг серверов; 
    "pingServers": {
      "$ref": { "file": "hangar.xc", "path": "hangar.pingServers" },
      // true - Enable display of ping to the servers
      // true - показывать пинг до серверов
      "enabled": true,
      // Axis field coordinates
      // Положение поля по осям
       "x": 650,
       "y": 762,
      // Maximum number of column rows
      // Максимальное количество строк одной колонки
       "maxRows": 1,
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
        "name": "$FieldFont",
        "size": 18,      // Размер
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
      }
    }
  }
}
