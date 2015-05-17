﻿/**
 * General parameters for minimap.
 * Общие параметры миникарты. Видео по некоторым аспектам редактирования http://www.youtube.com/watch?feature=player_embedded&v=NBJcqWuEoLo
 */
{
  "minimap": {
    // true - Enable minimap alternative mode.
    // true - Включить альтернативный режим миникарты.
    "enabled": true,
    // Map image transparency.
    // Прозрачность изображения карты.
    "mapBackgroundImageAlpha": 100,
    // Self icon transparency. White pointing arrow.
    // Прозрачность своей иконки. Белая стрелка.
    "selfIconAlpha": 100,
	// Hide camera direction green triangle.
    // Спрятать зеленый треугольник направления камеры.
   "hideCameraTriangle": false,
    // Camera transparency and its attached geometry (green triangle).
    // Прозрачность камеры и прикрепленной геометрии (зеленый треугольник).
    "cameraAlpha": 100,
    // Vehicles icon size. Does not affect attached geometry and textfields. Floating point allowed: 0.7, 1.4.
    // Размер иконки техники. Не влияет на прикрепленную к геометрию и текстовые поля. Можно дробные: 0.7, 1.4.
    "iconScale": 1.3,
    // Map zoom by key pressing. Key is defined at file "hotkeys.xc".
    // Увеличение миникарты по нажатию кнопки. Кнопка задается в файле "hotkeys.xc".
    "zoom": {
      // Number of pixels to get back from maximum size (screen height-minimap height).
      // Число пикселей для уменьшения миникарты от максимального размера (высота экрана-высота миникарты).
      "pixelsBack": 470,
      // false - does not set zoomed minimap at display center.
      // false - не устанавливать увеличенную миникарту по центру экрана.
      "centered": true
    },
    // Minimap labels.
    // Надписи на миникарте.
    "labels": ${"minimapLabelsAlt.xc":"labels"},
    // Minimap circles.
    // Круги на миникарте.
    "circles": ${"minimapCirclesAlt.xc":"circles"},
	//"circles": ${"../../tankrange.xc":"circles"},
    // Minimap lines.
    // Линии на миникарте.
    "lines": ${"minimapLinesAlt.xc":"lines"},
    "square" : { // Квадрат со стороной 1000m. Показывает границы максимальной отрисовка юнитов.
      "enabled": true,
      // Show square if using artillery\SPG vehicle.
      // Показывать ли квадрат в случае артиллерии.
      "artilleryEnabled": false,
      // Толщина линии.
      "thickness": 0.75,
      // Прозрачность.
      "alpha": 90,
      // Цвет.
      "color": "0xFCFCFC"
    }
  }
}
