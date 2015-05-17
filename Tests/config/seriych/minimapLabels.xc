﻿/**
 * Minimap labels. Basic HTML/CSS supported.
 * Надписи на миникарте. Поддерживают HTML.
 */
{
  // тень
  "labelShadow":
    { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 3, "strength": 4 },
  "labels": {
      // {{vehicle-class}} macro substitutions.
      // Подстановки макроса {{vehicle-class}}.
      "vehicleclassmacro": {
        // ЛT ♦.
        "light": "\u2022",
        // СТ.
        "medium": "\u2022",
        // ТТ.
        "heavy": "\u2022",
        // ПТ ▼.
        "td": "\u2022",
        // Artillery / Арта.
        "spg": "\u25AA",
        // HeavyTank10 by gui_settings.xml.
        // ТТ10 посредством gui_settings.xml.
        "superh": "\u2022"
        // Special symbols website / Сайт со спец символами:
        // http://www.fileformat.info/info/unicode/char/25a0/index.htm
        // Great symbolic font by Andrey_Hard for {{vehicle-class}}:
        // Отличный символьный шрифт от Andrey_Hard для замены букв от {{vehicle-class}} макроса:
        // http://goo.gl/d2KIj
      },
      // Textfields for tanks on minimap.
      // Текстовые поля для танков на миникарте.
      "units": {
        // Textfields switch for revealed units.
        // Выключатель добавочных текстовых полей для видимых юнитов.
        "revealedEnabled": true,
        // Textfields switch for lost enemy units. Show last seen position.
        // Выключатель текстовых полей для пропавших врагов.
        "lostEnemyEnabled": true,
        // Формат поля.
        "format": {
          // Союзник.
          "ally":           "<span class='mm_a'>{{vehicle-short}}</span>",
          // Тимкиллер.
          "teamkiller":     "<span class='mm_t'>{{vehicle-short}}</span>",
          // Враг.
          "enemy":          "<span class='mm_e'>{{vehicle-short}}</span>",
          // Взводный.
          "squad":          "<textformat leading='-2'><span class='mm_s'><i>{{nick%.4s}}</i></span></textformat>",
          // Own marker or spectated subject.
          // Свой маркер и маркер приёмника камеры наблюдения в случае смерти.
          "oneself":        "",
          // Out of radio range ally
          // Союзник, с которым потеряна связь
          "lostally":       "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_la'><i>{{vehicle-short}}</i></span>",
          // Out of radio range teamkiller
          // Тимкиллер, с которым потеряна связь
          "lostteamkiller": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_lt'><i>{{vehicle-short}}</i></span>",
          // Lost enemy units.
          // Противник, пропавший из засвета
          "lost":           "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_l'><i>{{vehicle-short}}</i></span>",
          // Out of radio range squadman
          // Взводный, с которым потеряна связь
          "lostsquad":      "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_ls'><i>{{nick%.4s}}</i></span>",
          // Мертвый союзник.
          "deadally":       "<span class='mm_dot'><b>×</b></span><span class='mm_da'></span>",
          // Мертвый тимкиллер.
          "deadteamkiller": "<span class='mm_dot'><b>×</b></span><span class='mm_dt'></span>",
          // Мертвый противник.
          "deadenemy":      "<span class='mm_dot'><b>×</b></span><span class='mm_de'></span>",
          // Мертвый взводный.
          "deadsquad":      "<span class='mm_dot'><b>×</b></span><span class='mm_ds'></span>"
        },
        // CSS style (fonts and colors option)
        // CSS стиль (настройка шрифтов и цветов)
        "css": {
          "ally":            ".mm_a{font-family:$FieldFont; font-size:8px; color:#C8FFA6;}",
          "teamkiller":      ".mm_t{font-family:$FieldFont; font-size:8px; color:#A6F8FF;}",
          "enemy":           ".mm_e{font-family:$FieldFont; font-size:8px; color:#FCA9A4;}", // #FCA9A4 / #A8A4D7
          "squad":           ".mm_s{font-family:$FieldFont; font-size:8px; color:#FFD099;}",
          "oneself":         ".mm_o{font-family:$FieldFont; font-size:8px; color:#FFFFFF;}",
          "lostally":       ".mm_la{font-family:$FieldFont; font-size:8px; color:#C8FFA6;} .mm_dot{font-family:Arial; font-size:22px; color:#B4E595;}",
          "lostteamkiller": ".mm_lt{font-family:$FieldFont; font-size:8px; color:#A6F8FF;} .mm_dot{font-family:Arial; font-size:22px; color:#00D2E5;}",
          "lost":            ".mm_l{font-family:$FieldFont; font-size:8px; color:#FCA9A4;} .mm_dot{font-family:Arial; font-size:22px; color:#FCA9A4;}",
          "lostsquad":      ".mm_ls{font-family:$FieldFont; font-size:8px; color:#FFD099;} .mm_dot{font-family:Arial; font-size:22px; color:#E5BB8A;}",
          "deadally":       ".mm_da{font-family:$FieldFont; font-size:8px; color:#6E8C5B;} .mm_dot{font-family:Arial; font-size:6px; color:#009900;}",
          "deadteamkiller": ".mm_dt{font-family:$FieldFont; font-size:8px; color:#5B898C;} .mm_dot{font-family:Arial; font-size:6px; color:#00D2E5;}",
          "deadenemy":      ".mm_de{font-family:$FieldFont; font-size:8px; color:#FF2222;} .mm_dot{font-family:Arial; font-size:6px; color:#FF2222;}",
          "deadsquad":      ".mm_ds{font-family:$FieldFont; font-size:8px; color:#997C5C;} .mm_dot{font-family:Arial; font-size:6px; color:#E5BB8A;}"
        },
        // Fields shadow.
        // Тени полей.
        // "distance"- дистанция тени относительно поля, "angle"- угол тени при дистанции > 0, "alpha"- прозрачность, "blur"- размытие, "strength'- сила.
        "shadow": {
          "ally":           ${"labelShadow"},
          "teamkiller":     ${"labelShadow"},
          "enemy":          ${"labelShadow"},
          "squad":          ${"labelShadow"},
          "oneself":        ${"labelShadow"},
          "lostally":       ${"labelShadow"},
          "lostteamkiller": ${"labelShadow"},
          "lost":           ${"labelShadow"},
          "lostsquad":      ${"labelShadow"},
          "deadally":       ${"labelShadow"},
          "deadteamkiller": ${"labelShadow"},
          "deadenemy":      ${"labelShadow"},
          "deadsquad":      ${"labelShadow"}
        },
        // Field offset relative to current icon (except lost - relative to enemy last seen position).
        // Смещение полей относительно текущей иконки (кроме lost и dead- относительно последних координат видимой позиции).
        "offset": {
          "ally":           {"x": 3, "y": -1},
          "teamkiller":     {"x": 3, "y": -1},
          "enemy":          {"x": 3, "y": -1},
          "squad":          {"x": 3, "y": -2},
          "oneself":        {"x": 0, "y": 0},
          "lost":           {"x": -6, "y": -14},
          "lostally":       ${"labels.units.offset.lost"},
          "lostteamkiller": ${"labels.units.offset.lost"},
          "lostsquad":      ${"labels.units.offset.lost"},
          "deadally":       {"x": -4, "y": -6},
          "deadteamkiller": ${"labels.units.offset.deadally"},
          "deadenemy":      ${"labels.units.offset.deadally"},
          "deadsquad":      ${"labels.units.offset.deadally"}
        },
        // Прозрачность текстовых полей.
        "alpha" : {
          "ally": 100,
          "teamkiller": 100,
          "enemy": 100,
          "squad": 100,
          "oneself": 100,
          "lostally": 70,
          "lostteamkiller": 70,
          "lost": 70,
          "lostsquad": 70,
          "deadally": 70,
          "deadteamkiller": 70,
          "deadenemy": 70,
          "deadsquad": 70
        }
      },
      // Textfield for map side size. 1000m, 700m, 600m.
      // Поле размера стороны карты. Например, 1000м, 700м, 600м.
      "mapSize": {
        "enabled": true,
        "format": "<b>{{cellsize}}0<font size='9'>M</font></b>",
        "css": "font-size:12px; color:#000000;",
        "alpha": 80,
        "offsetX": 0,
        "offsetY": 0,
        "shadow": { // Тень.
          "enabled": true,
          "color": "0xFFFFFF",
          "distance": 0,
          "angle": 0,
          "alpha": 80,
          "blur": 6,
          "strength": 4
        },
        // Decrease sizes in case of map image weird shrinking while map resize.
        // Increase sizes in case of field being partially cut off.
        // -------------------------------------------------------------------------------------
        // Уменьшайте размеры, если при изменении размера миникарты изображение карты сжимается.
        // Увеличивайте размеры, если содержимое поля обрезается.
        "width": 100,
        "height": 30
      }
    }
}
