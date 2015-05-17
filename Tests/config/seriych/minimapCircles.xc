/**
 * Minimap circles. Only real map meters. Only for own unit.
 * Круги на миникарте. Дистанция только в реальных метрах карты. Только для своей техники.
 */
{
    "circles": {
        "enabled": true,
        // TODO: better description and translation
        // View distance
        // Дальность обзора
        // Параметры:
        //   "enabled": false - выключен
        //   "distance" - дистанция
        //   "scale" - масштаб круга (множитель расстояния) (параметр не обязательный)
        //   "thickness" - толщина
        //   "alpha" - прозрачность
        //   "color" - цвет
        //   "state" - состояние танка: 1-стоит, 2-двигается (параметр не обязательный)
        // Доступные значения расстояния:
        //   N - число в метрах, рисуется статический круг
        //   "blindarea" - реальная граница слепой зоны танка (50<=X<=445)
        //   "dynamic"   - реальная дальность обзора танка c учётом стоит/движется
        //   "standing"  - реальная дальность обзора танка стоя
        //   "motion"    - реальная дальность обзора танка в движении
        // Источник:
        //   http://www.koreanrandom.com/forum/topic/15467-/page-5#entry187139
        //   http://www.koreanrandom.com/forum/topic/15467-/page-4#entry186794
        "view": [
            // активный круг обзора
            { "enabled": true, "state": 3, "distance": "dynamic",  "scale": 1, "thickness": 0.6, "alpha": 55, "color": "0x00AACC" },
            // круг обзора стоя
            { "enabled": true, "state": 3, "distance": "standing", "scale": 1, "thickness": 0.6, "alpha": 30, "color": "0x00AACC" },
            // круг обзора в движении
            { "enabled": true, "state": 3, "distance": "motion",   "scale": 1, "thickness": 0.6, "alpha": 30, "color": "0x00AACC" },
            // круг "рентгена" 50м
            { "enabled": true, "state": 3, "distance": 50,         "scale": 1, "thickness": 1.0, "alpha": 50, "color": "0xFFFFFF" },
            // круг максимальной дальности засвета 445м
            { "enabled": true, "state": 3, "distance": 445,        "scale": 1, "thickness": 0.6, "alpha": 65, "color": "0xFF2222" }
        ],
        // Maximum range of fire for artillery
        // Artillery gun fire range may differ depending on vehicle angle relative to ground
        // and vehicle height positioning relative to target. These factors are not considered.
        // See pics at http://goo.gl/ZqlPa
        // ------------------------------------------------------------------------------------------------
        // Максимальная дальность стрельбы для артиллерии
        // Дальнобойность арты может меняться в зависимости от углов постановки машины на склонах местности
        // и высоте расположения машины относительно цели. На миникарте эти факторы не учитываются.
        // Подробнее по ссылке: http://goo.gl/ZqlPa
        "artillery": { "enabled": true, "alpha": 55, "color": "0xFF9900", "thickness": 0.6 },
        // Maximum range of shooting for machine gun
        // Максимальная дальность полета снаряда для пулеметных танков
        "shell":     { "enabled": true, "alpha": 55, "color": "0xFF9900", "thickness": 0.6 },
        // Special circles dependent on vehicle type.
        // Many configuration lines for the same vehicle make many circles.
        // See other vehicle types at (replace : symbol with -):
        // http://code.google.com/p/wot-xvm/source/browse/trunk/src/xpm/xvmstat/vehinfo_short.py
        // ------------------------------------------------------------------------------------------------
        // Специальные круги, зависящие от модели техники.
        // Несколько строк для одной техники делают несколько кругов.
        // Названия танков для дополнения брать по ссылке (символ : заменяется -):
        // http://code.google.com/p/wot-xvm/source/browse/trunk/src/xpm/xvmstat/vehinfo_short.py
        "special": [
          // Example: Artillery gun fire range circle
          // Пример: Круг дальности стрельбы арты
          // "enabled": false - выключен; "thickness" - толщина; "alpha" - прозрачность; "color" - цвет.
          //{ "ussr-SU-18": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
        ]
    }
}
