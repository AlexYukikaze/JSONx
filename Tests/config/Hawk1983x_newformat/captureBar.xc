/**
 * Capture bar.
 * Полоса захвата.
 */
{
  "captureBar": {
    // false - Disable.
    // false - отключить.
    "enabled": true,
	// Ally and enemy bars colors (default: use system color)
    // Цвета полос захвата союзников и противников (по умолчанию используется системный цвет)
    "allyColor": "#3D9B00",
    "enemyColor": "#FE0E00",
    // Upper textfield offset in case of big font size.
    // Смещение верхнего поля вверх на случай больших размеров шрифтов.
    "primaryTitleOffset": 7,
    // Append plus to three capturers. Cant calculate more than three.
    // Дописывать плюс к тройке захватчиков. Невозможно рассчитать более трёх.
    "appendPlus" : true,
    // Capture format (macros allowed, see readme-en.txt).
    // Формат захвата (допускаются макроподстановки, см. readme-ru.txt).
    "enemy": { // Вражеской.
      // Upper textfield.
      // Верхнее текстовое поле.
      "primaryTitleFormat":   "<font size='15' color='#FCFCFC'><font color='#3D9B00' face='a_RubricaCn'> {{l10n:enemyBaseCapture}}</font>  <font size='15'>{{extra}}</font></font>",
      // Lower textfield.
      // Нижнее текстовое поле.
      "secondaryTitleFormat": "<font size='16' color='#FCFCFC' face='a_RubricaCn'>{{points}}&#x25;</font>",
      // Full capture text.
      // Текст полного захвата.
      "captureDoneFormat":    "<font face='BloodyShacky' size='19' color='#3D9B00'>&#61465;  &#61465;  &#61465;  &#61465;   </font><font size='17' color='#FFCC66' face='a_RubricaCn'>{{l10n:enemyBaseCaptured}}<font face='BloodyShacky' size='19' color='#3D9B00'>   &#61465;  &#61465;  &#61465;  &#61465;</font><font size='19'>\n\n\n\n</font><font face='BloodyShacky' size='183' color='#FFCC66'>  &#61450;           <font size='0'>&#61450;</font></font></font>",
      // Extra text available after necessary calculations.
      // Дополнительный текст после необходимого расчета.
      "extra":"<font face='a_RubricaCn'>{{l10n:allyCapturers}}: <b><font color='#FFCC66'>{{tanks}}</font></b>  <font face='a_RubricaCn'>{{l10n:Timeleft}}: <b><font color='#FFCC66' face='a_RubricaCn'>{{time}}</font><b>",
      "shadow": {
        "color": "#000000",
        "alpha": 50,
        "blur": 4,
        "strength": 2
      }
    },
    "ally": { // Союзников.
      "primaryTitleFormat":   "<font size='15' color='#FCFCFC'><font color='#C20000' face='a_RubricaCn'> {{l10n:allyBaseCapture}}</font>  <font size='15'>{{extra}}</font></font>",
      "secondaryTitleFormat": "<font size='16' color='#FCFCFC' face='a_RubricaCn'>{{points}}&#x25;</font>",
      "captureDoneFormat":    "<font face='BloodyShacky' size='19' color='#C20000'>&#61469;  &#61469;  &#61469;  &#61469;   </font><font size='17' color='#FFCC66' face='a_RubricaCn'>{{l10n:allyBaseCaptured}}<font face='BloodyShacky' size='19' color='#C20000'>   &#61469;  &#61469;  &#61469;  &#61469;</font>\n\n<font face='BloodyShacky'  size='183' color='#FFCC66'>           &#61449;</font></font>",
      "extra":"<font face='a_RubricaCn'>{{l10n:enemyCapturers}}: <b><font color='#FFCC66'>{{tanks}}</font></b>  <font face='a_RubricaCn'>{{l10n:Timeleft}}: <b><font color='#FFCC66' face='a_RubricaCn'>{{time}}</font><b>",
      "shadow": {
        "color": "#000000",
        "alpha": 50,
        "blur": 4,
        "strength": 2
      }
    }
  }
}
