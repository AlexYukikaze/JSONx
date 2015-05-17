/**
 * Color settings.
 * Настройки цветов.
 */
{
  // Team colors
  // Цвета команд
  "global": {
    "colorAlly":    "0x95FF00", // цвет союзной команды     / "0x95FF00"
    "colorEnemy":   "0xFF2222"  // цвет вражеской команды   / "0xFF2222" / "0x8379FE"
  },
  // Dynamic color for various statistical parameters
  // Динамический цвет по различным статистическим показателям
  "colorRating": {
    "undefined":    "0xDDDDDD",   // неопределенно   undefined
    "very_bad":     "0xFE3C33",   // очень плохо     very bad
    "bad":          "0xFF8533",   // плохо           bad
    "normal":       "0xF9F733",   // средне          normal
    "good":         "0x80FF33",   // хорошо          good
    "very_good":    "0x00C3F4",   // очень хорошо    very good
    "unique":       "0xBC85FF"    // уникально       unique
  },
  // Dynamic color for damage
  // Динамический цвет для наносимого урона
  "colorDamage": {              // source
    "player":       "0xFCFCFC",             // player     / игрок наносит урон любому
    "squad":        "0xFFDD33",             // squadman   / взводный наносит урон любому
    "ally":         ${"global.colorEnemy"}, // ally       / союзник или враг наносит урон врагу
    "tosquad":      "0xFFB964",             // tosquad    / враг наносит урон нашему совзводному
    "enemy":        ${"global.colorAlly"},  // enemy      / противник наносит урон нашему союзнику
    "teamkiller":   "0x00EAFF"              // teamKiller / наш союзник наносит урон нашему союзнику или совзводному
  },
  // Dynamic color for remaining health points
  // Динамический цвет по оставшемуся запасу прочности
  "colorHP": {
    "very_low":         "0xFF0000",   // очень низкий   very low
    "low":              "0xDD4444",   // низкий         low
    "average":          "0xFFCC22",   // средний        average
    "above_average":    "0xFCFCFC"    // выше среднего  above-average
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state.
      // Object:      ally, squadman, teamKiller, enemy.
      // State:       alive, dead, blowedup.
      // ----
      // Формат: объект_состояние.
      // Объект:      ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник.
      // Состояние:   alive - живой, dead - мертвый, blowedup - взорвана боеукладка.
      "ally_alive":             ${"global.colorAlly"},
      "ally_dead":              "0x009900",
      "ally_blowedup":          "0x007700",
      "squadman_alive":         "0xFFB964",
      "squadman_dead":          "0xCA7000",
      "squadman_blowedup":      "0xA45A00",
      "teamKiller_alive":       "0x00EAFF",
      "teamKiller_dead":        "0x097783",
      "teamKiller_blowedup":    "0x096A75",
      "enemy_alive":            ${"global.colorEnemy"}, // "0xF50800"
      "enemy_dead":             "0x840500",
      "enemy_blowedup":         "0x5A0401",
      "ally_base":              ${"global.colorAlly"},
      "enemy_base":             ${"global.colorEnemy"}
    },
    // Color settings for damage.
    // Настройки цвета для урона.
    "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник:   ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип:        hit - попадание, kill - убийство, blowup - боеукладка.
      "ally_ally_blowup":           ${"colorDamage.teamkiller"},
      "ally_ally_hit":              ${"colorDamage.teamkiller"},
      "ally_ally_kill":             ${"colorDamage.teamkiller"},
      "ally_allytk_blowup":         ${"colorDamage.teamkiller"},
      "ally_allytk_hit":            ${"colorDamage.teamkiller"},
      "ally_allytk_kill":           ${"colorDamage.teamkiller"},
      "ally_enemy_blowup":          ${"colorDamage.ally"},
      "ally_enemy_hit":             ${"colorDamage.ally"},
      "ally_enemy_kill":            ${"colorDamage.ally"},
      "ally_enemytk_blowup":        ${"colorDamage.ally"},
      "ally_enemytk_hit":           ${"colorDamage.ally"},
      "ally_enemytk_kill":          ${"colorDamage.ally"},
      "ally_squadman_blowup":       ${"colorDamage.teamkiller"},
      "ally_squadman_hit":          ${"colorDamage.teamkiller"},
      "ally_squadman_kill":         ${"colorDamage.teamkiller"},
      "enemy_ally_blowup":          ${"colorDamage.enemy"},
      "enemy_ally_hit":             ${"colorDamage.enemy"},
      "enemy_ally_kill":            ${"colorDamage.enemy"},
      "enemy_allytk_blowup":        ${"colorDamage.enemy"},
      "enemy_allytk_hit":           ${"colorDamage.enemy"},
      "enemy_allytk_kill":          ${"colorDamage.enemy"},
      "enemy_enemy_blowup":         ${"colorDamage.ally"},
      "enemy_enemy_hit":            ${"colorDamage.ally"},
      "enemy_enemy_kill":           ${"colorDamage.ally"},
      "enemy_enemytk_blowup":       ${"colorDamage.ally"},
      "enemy_enemytk_hit":          ${"colorDamage.ally"},
      "enemy_enemytk_kill":         ${"colorDamage.ally"},
      "enemy_squadman_blowup":      ${"colorDamage.tosquad"},
      "enemy_squadman_hit":         ${"colorDamage.tosquad"},
      "enemy_squadman_kill":        ${"colorDamage.tosquad"},
      "player_ally_blowup":         ${"colorDamage.player"},
      "player_ally_hit":            ${"colorDamage.player"},
      "player_ally_kill":           ${"colorDamage.player"},
      "player_allytk_blowup":       ${"colorDamage.player"},
      "player_allytk_hit":          ${"colorDamage.player"},
      "player_allytk_kill":         ${"colorDamage.player"},
      "player_enemy_blowup":        ${"colorDamage.player"},
      "player_enemy_hit":           ${"colorDamage.player"},
      "player_enemy_kill":          ${"colorDamage.player"},
      "player_enemytk_blowup":      ${"colorDamage.player"},
      "player_enemytk_hit":         ${"colorDamage.player"},
      "player_enemytk_kill":        ${"colorDamage.player"},
      "player_squadman_blowup":     ${"colorDamage.player"},
      "player_squadman_hit":        ${"colorDamage.player"},
      "player_squadman_kill":       ${"colorDamage.player"},
      "squadman_ally_blowup":       ${"colorDamage.squad"},
      "squadman_ally_hit":          ${"colorDamage.squad"},
      "squadman_ally_kill":         ${"colorDamage.squad"},
      "squadman_allytk_blowup":     ${"colorDamage.squad"},
      "squadman_allytk_hit":        ${"colorDamage.squad"},
      "squadman_allytk_kill":       ${"colorDamage.squad"},
      "squadman_enemy_blowup":      ${"colorDamage.squad"},
      "squadman_enemy_hit":         ${"colorDamage.squad"},
      "squadman_enemy_kill":        ${"colorDamage.squad"},
      "squadman_enemytk_blowup":    ${"colorDamage.squad"},
      "squadman_enemytk_hit":       ${"colorDamage.squad"},
      "squadman_enemytk_kill":      ${"colorDamage.squad"},
      "squadman_squadman_blowup":   ${"colorDamage.squad"},
      "squadman_squadman_hit":      ${"colorDamage.squad"},
      "squadman_squadman_kill":     ${"colorDamage.squad"},
      "unknown_ally_blowup":        ${"colorDamage.enemy"},
      "unknown_ally_hit":           ${"colorDamage.enemy"},
      "unknown_ally_kill":          ${"colorDamage.enemy"},
      "unknown_allytk_blowup":      ${"colorDamage.enemy"},
      "unknown_allytk_hit":         ${"colorDamage.enemy"},
      "unknown_allytk_kill":        ${"colorDamage.enemy"},
      "unknown_enemy_blowup":       ${"colorDamage.ally"},
      "unknown_enemy_hit":          ${"colorDamage.ally"},
      "unknown_enemy_kill":         ${"colorDamage.ally"},
      "unknown_enemytk_blowup":     ${"colorDamage.ally"},
      "unknown_enemytk_hit":        ${"colorDamage.ally"},
      "unknown_enemytk_kill":       ${"colorDamage.ally"},
      "unknown_squadman_blowup":    ${"colorDamage.tosquad"},
      "unknown_squadman_hit":       ${"colorDamage.tosquad"},
      "unknown_squadman_kill":      ${"colorDamage.tosquad"}
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "shot":               "0xFFAA55",     // shot             / попадание
      "fire":               "0xFF6655",     // fire             / пожар
      "ramming":            "0x998855",     // ramming          / таран
      "world_collision":    "0x228855",     // world collision  / столкновение с объектами, падение
      "death_zone":         "0xCCCCCC",     // TODO: value, description
      "drowning":           "0xCCCCCC",     // TODO: value, description
      "other":              "0xCCCCCC"      // other            / другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT":  "0xA2FF9A",
      // Цвет для средних танков.
      "MT":  "0xFFF198",
      // Цвет для тяжелых танков.
      "HT":  "0xDDDDDD",
      // Цвет для арты.
      "SPG": "0xFFACAC",
      // Цвет для ПТ.
      "TD":  "0xA0CFFF",
      // Цвет для премиумной техники.
      "premium": "0xFFCC66",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Dynamic color by spotted status
    // Динамический цвет по статусу засвета
    "spotted": {
      "neverSeen": "0x000000",
      "lost": "0x999999",
      "revealed": "0x00DE00",
      "dead": "0x000000",
      "neverSeen_arty": "0x000000",
      "lost_arty": "0x999999",
      "revealed_arty": "0xDE0000",
      "dead_arty": "0x000000"
    },
    // Values ​​below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 201,  "color": ${"colorHP.very_low"} },            // Цвет для значений менее 201
      { "value": 401,  "color": ${"colorHP.low"} },                 // Цвет для значений менее 401
      { "value": 1001, "color": ${"colorHP.average"} },             // Цвет для значений менее 1001
      { "value": 9999, "color": ${"colorHP.above_average"} }        // Цвет для остальных значений
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 10,  "color": ${"colorHP.very_low"} },             // Цвет для значений менее 10 проц
      { "value": 25,  "color": ${"colorHP.low"} },                  // Цвет для значений менее 25 проц
      { "value": 50,  "color": ${"colorHP.average"} },              // Цвет для значений менее 50 проц
      { "value": 101, "color": ${"colorHP.above_average"} }         // Цвет для остальных значений
    ],
    // Dynamic color for XVM Scale.
    // Динамический цвет по шкале XVM.
    // http://www.koreanrandom.com/forum/topic/2625-/
    "x": [
      { "value": 16.5, "color": ${"colorRating.very_bad"} },    // 00   - 16.5 - very bad   (20% of players)
      { "value": 33.5, "color": ${"colorRating.bad"} },         // 16.5 - 33.5 - bad        (better then 20% of players)
      { "value": 52.5, "color": ${"colorRating.normal"} },      // 33.5 - 52.5 - normal     (better then 60% of players)
      { "value": 75.5, "color": ${"colorRating.good"} },        // 52.5 - 75.5 - good       (better then 90% of players)
      { "value": 92.5, "color": ${"colorRating.very_good"} },   // 75.5 - 92.5 - very good  (better then 99% of players)
      { "value": 999,  "color": ${"colorRating.unique"} }       // 92.5 - XX   - unique     (better then 99.9% of players)
    ],
    // Dynamic color by efficiency
    // Динамический цвет по эффективности
    "eff": [
      { "value": 610,  "color": ${"colorRating.very_bad" } },  //    0 - 609  - very bad   (20% of players)
      { "value": 850,  "color": ${"colorRating.bad"      } },  //  610 - 849  - bad        (better then 20% of players)
      { "value": 1145, "color": ${"colorRating.normal"   } },  //  850 - 1144 - normal     (better then 60% of players)
      { "value": 1475, "color": ${"colorRating.good"     } },  // 1145 - 1474 - good       (better then 90% of players)
      { "value": 1775, "color": ${"colorRating.very_good"} },  // 1475 - 1774 - very good  (better then 99% of players)
      { "value": 9999, "color": ${"colorRating.unique"   } }   // 1775 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color by WN6 rating
    // Динамический цвет по рейтингу WN6
    "wn6": [
      { "value": 410,  "color": ${"colorRating.very_bad" } },  //    0 - 409  - very bad   (20% of players)
      { "value": 795,  "color": ${"colorRating.bad"      } },  //  410 - 794  - bad        (better then 20% of players)
      { "value": 1185, "color": ${"colorRating.normal"   } },  //  795 - 1184 - normal     (better then 60% of players)
      { "value": 1585, "color": ${"colorRating.good"     } },  // 1185 - 1584 - good       (better then 90% of players)
      { "value": 1925, "color": ${"colorRating.very_good"} },  // 1585 - 1924 - very good  (better then 99% of players)
      { "value": 9999, "color": ${"colorRating.unique"   } }   // 1925 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color by WN8 rating
    // Динамический цвет по рейтингу WN8
    "wn8": [
      { "value": 355,  "color": ${"colorRating.very_bad" } },  //    0 - 354  - very bad   (20% of players)
      { "value": 820,  "color": ${"colorRating.bad"      } },  //  355 - 819  - bad        (better then 20% of players)
      { "value": 1370, "color": ${"colorRating.normal"   } },  //  820 - 1369 - normal     (better then 60% of players)
      { "value": 2020, "color": ${"colorRating.good"     } },  // 1370 - 2019 - good       (better then 90% of players)
      { "value": 2620, "color": ${"colorRating.very_good"} },  // 2020 - 2619 - very good  (better then 99% of players)
      { "value": 9999, "color": ${"colorRating.unique"   } }   // 2620 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color by WG rating
    // Динамический цвет по рейтингу WG
    "wgr": [
      { "value": 1700,  "color": ${"colorRating.very_bad" } },  //    0 - 314  - very bad   (20% of players)
      { "value": 3800,  "color": ${"colorRating.bad"      } },  //  315 - 759  - bad        (better then 20% of players)
      { "value": 6100,  "color": ${"colorRating.normal"   } },  //  760 - 1324 - normal     (better then 60% of players)
      { "value": 8320,  "color": ${"colorRating.good"     } },  // 1325 - 1979 - good       (better then 90% of players)
      { "value": 9770,  "color": ${"colorRating.very_good"} },  // 1980 - 2569 - very good  (better then 99% of players)
      { "value": 99999, "color": ${"colorRating.unique"   } }   // 2570 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color by TEFF (E) rating.
    // Динамический цвет по рейтингу TEFF (E).
    "e": [
      { "value": 0.01, "color": ${"colorRating.undefined"} },
      { "value": 3,    "color": ${"colorRating.very_bad" } },
      { "value": 6,    "color": ${"colorRating.bad"      } },
      { "value": 7,    "color": ${"colorRating.normal"   } },
      { "value": 8,    "color": ${"colorRating.good"     } },
      { "value": 9,    "color": ${"colorRating.very_good"} },
      { "value": 20,   "color": ${"colorRating.unique"   } }
    ],
    // Dynamic color for win chance
    // Динамический цвет для шанса на победу
    "winChance": [
      { "value": 16.5, "color": ${"colorRating.very_bad" } },
      { "value": 34.5, "color": ${"colorRating.bad"      } },
      { "value": 64.5, "color": ${"colorRating.normal"   } },
      { "value": 79.5, "color": ${"colorRating.good"     } },
      { "value": 89.5, "color": ${"colorRating.very_good"} },
      { "value": 101,  "color": ${"colorRating.unique"   } }
    ],
    // Dynamic color by win percent.
    // Динамический цвет по проценту побед.
    "rating": [
      { "value": 46.5, "color": ${"colorRating.very_bad"} },     //  0   - 46.5  - very bad
      { "value": 48.5, "color": ${"colorRating.bad"} },          // 46.5 - 48.5  - bad
      { "value": 51.5, "color": ${"colorRating.normal"} },       // 48.5 - 51.5  - normal
      { "value": 56.5, "color": ${"colorRating.good"} },         // 51.5 - 56.5  - good
      { "value": 64.5, "color": ${"colorRating.very_good"} },    // 56.5 - 64.5  - very good
      { "value": 101,  "color": ${"colorRating.unique"} }        // 64.5 - 100   - unique
    ],
    // Dynamic color by kilo-battles.
    // Динамический цвет по количеству кило-боев.
    "kb": [
      { "value": 2,   "color": ${"colorRating.undefined"} },     //  0 - 2
      { "value": 6,   "color": ${"colorRating.undefined"} },          //  2 - 6
      { "value": 16,  "color": ${"colorRating.undefined"} },       //  6 - 16
      { "value": 30,  "color": ${"colorRating.undefined"} },         // 16 - 30
      { "value": 43,  "color": ${"colorRating.undefined"} },    // 30 - 43
      { "value": 999, "color": ${"colorRating.undefined"} }        // 43 - *
    ],
    // Dynamic color by average level of player tanks.
    // Динамический цвет по среднему уровню танков игрока.
    "avglvl": [
      { "value": 3,  "color": ${"colorRating.undefined"} },
      { "value": 5,  "color": ${"colorRating.undefined"} },
      { "value": 7,  "color": ${"colorRating.undefined"} },
      { "value": 8,  "color": ${"colorRating.undefined"} },
      { "value": 9,  "color": ${"colorRating.undefined"} },
      { "value": 11, "color": ${"colorRating.undefined"} }
    ],
    // Dynamic color by battles on current tank.
    // Динамический цвет по количеству боев на текущем танке.
    "t_battles": [
      { "value": 100,   "color": ${"colorRating.undefined"} },   //    0 - 99
      { "value": 250,   "color": ${"colorRating.undefined"} },   //  100 - 249
      { "value": 500,   "color": ${"colorRating.undefined"} },   //  250 - 499
      { "value": 1000,  "color": ${"colorRating.undefined"} },   //  500 - 999
      { "value": 1800,  "color": ${"colorRating.undefined"} },   // 1000 - 1799
      { "value": 99999, "color": ${"colorRating.undefined"} }    // 1800 - *
    ],
    // Dynamic color by average damage on current tank.
    // Динамический цвет по среднему урону за бой на текущем танке.
    "tdb": [
      { "value": 1,    "color": ${"colorRating.undefined"} },
      { "value": 500,  "color": ${"colorRating.very_bad" } },
      { "value": 1000, "color": ${"colorRating.normal"   } },
      { "value": 2000, "color": ${"colorRating.good"     } }
    ],
    // Dynamic color by average damage efficiency on current tank.
    // Динамический цвет по эффективности урона за бой на текущем танке.
    "tdv": [
      { "value": 0.01, "color": ${"colorRating.undefined"} },
      { "value": 0.6,  "color": ${"colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"colorRating.bad"      } },
      { "value": 1.0,  "color": ${"colorRating.normal"   } },
      { "value": 1.3,  "color": ${"colorRating.good"     } },
      { "value": 2.0,  "color": ${"colorRating.very_good"} },
      { "value": 999,  "color": ${"colorRating.unique"   } }
    ],
    // Dynamic color by average frags per battle on current tank.
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке.
    "tfb": [
      { "value": 0.01, "color": ${"colorRating.undefined"} },
      { "value": 0.6,  "color": ${"colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"colorRating.bad"      } },
      { "value": 1.0,  "color": ${"colorRating.normal"   } },
      { "value": 1.3,  "color": ${"colorRating.good"     } },
      { "value": 2.0,  "color": ${"colorRating.very_good"} },
      { "value": 999,  "color": ${"colorRating.unique"   } }
    ],
    // Dynamic color by average number of spotted enemies per battle on current tank.
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке.
    "tsb": [
      { "value": 0.01, "color": ${"colorRating.undefined"} },
      { "value": 0.6,  "color": ${"colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"colorRating.bad"      } },
      { "value": 1.0,  "color": ${"colorRating.normal"   } },
      { "value": 1.3,  "color": ${"colorRating.good"     } },
      { "value": 2.0,  "color": ${"colorRating.very_good"} },
      { "value": 999,  "color": ${"colorRating.unique"   } }
    ],
    // Dynamic color by WN8 effective damage
    // Динамический цвет по эффективному урону по WN8
    "wn8effd": [
      { "value": 0.01, "color": ${"colorRating.undefined"} },
      { "value": 0.6,  "color": ${"colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"colorRating.bad"      } },
      { "value": 1.0,  "color": ${"colorRating.normal"   } },
      { "value": 1.3,  "color": ${"colorRating.good"     } },
      { "value": 2.0,  "color": ${"colorRating.very_good"} },
      { "value": 999,  "color": ${"colorRating.unique"   } }
    ],
    // Dynamic color by damage rating (percents for marks on gun)
    // Динамический цвет по рейтингу урона (процент для отметок на стволе)
    "damageRating": [
      { "value": 0.001, "color": ${"colorRating.undefined"} },
      { "value": 20,    "color": ${"colorRating.very_bad" } },  // 20% of players
      { "value": 60,    "color": ${"colorRating.bad"      } },  // better then 20% of players
      { "value": 90,    "color": ${"colorRating.normal"   } },  // better then 60% of players
      { "value": 99,    "color": ${"colorRating.good"     } },  // better then 90% of players
      { "value": 99.9,  "color": ${"colorRating.very_good"} },  // better then 99% of players
      { "value": 101,   "color": ${"colorRating.unique"   } }   // better then 99.9% of players
    ],
    // Dynamic color by hit ratio (percents of hits)
    // Динамический цвет по проценту попаданий
    "hitsRatio": [
      { "value": 0.001, "color": ${"colorRating.undefined"} },
      { "value": 47.5,  "color": ${"colorRating.very_bad" } },
      { "value": 60.5,  "color": ${"colorRating.bad"      } },
      { "value": 68.5,  "color": ${"colorRating.normal"   } },
      { "value": 74.5,  "color": ${"colorRating.good"     } },
      { "value": 78.5,  "color": ${"colorRating.very_good"} },
      { "value": 101,   "color": ${"colorRating.unique"   } }
    ]
  }
}
