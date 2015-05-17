/**
 * Color settings.
 * Настройки цветов.
 */
{
    // System and damage color definition.
    // Шаблон системного цвета и цвета для урона.
  "def": {
    "ally":		  "0x267F00",  	// союзник
    "squadman":	  "0xFF914C",	// взводный
    "teamKiller": "0x00EAFF",	// тимкиллер
    "enemy":	  "0xC20000",	// противник
    "player":	  "0xFFCC66",	// игрок
    // Dynamic color definition.
    // Шаблон динамического цвета.
    "color0": "0xE5E5E5",	// neutral	  / нейтрально
    "color1": "0xFE0E00",	// very bad   / очень плохо
    "color2": "0xFE7903",	// bad        / плохо
    "color3": "0xF8F400",	// normal     / средне
    "color4": "0x60FF00",	// good       / хорошо
    "color5": "0x02C9B3",	// very good  / очень хорошо
    "color6": "0xD042F3",	// unique     / уникально
    // HP dynamic color definition.
    // Шаблон динамического цвета для здоровья.
    "hpColor1": "0xFC857E",	    // low			/ низкий
    "hpColor2": "0xFCB97E",	    // below average	/ ниже среднего
    "hpColor3": "0xE5E5E5",	    // average			/ средний
    "hpColor4": "0xE5E5E5"		// above-average	/ выше среднего
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state
      // Object:      ally, squadman, teamKiller, enemy
      // State:       alive, dead, blowedup
      // ----
      // Формат: объект_состояние
      // Объект:      ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние:   alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      //Союзник
      "ally_alive":          ${ "def.ally" },	    // живой
      "ally_dead":           "0xD9D8D6",	        // мертвый
      "ally_blowedup":       "0xD9D8D6",		    // взорван БК
      //Взводный
      "squadman_alive":      ${ "def.squadman" },	// живой
      "squadman_dead":       "0xD9D8D6",			// мертвый
      "squadman_blowedup":   "0xD9D8D6",		    // взорван БК
      //Тимкиллер
      "teamKiller_alive":    ${ "def.teamKiller" }, // живой
      "teamKiller_dead":     "0x097783",			// мертвый
      "teamKiller_blowedup": "0x097783",		    // взорван БК
      //Противник
      "enemy_alive":         ${ "def.enemy" },	    // живой
      "enemy_dead":          "0xD9D8D6",			// мертвый
      "enemy_blowedup":      "0xD9D8D6",			// взорван БК
	  "ally_base":           ${ "def.ally" },
      "enemy_base":          ${ "def.enemy" }
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "attack": "0xFFAA55",			// attack			/ атака
      "fire": "0xFF6655",			// fire			/ пожар
      "ramming": "0x7A793D",		// ramming		/ таран
      "world_collision": "0x805A37",// world collision	/ столкновение с объектами, падение
	  "drowning": "0xCCCCCC",       // TODO: value, description
	  "death_zone": "0xCCCCCC",     // TODO: value, description
      "other": "0xCCCCCC"			// other			/ другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT":  "0xCADABA",
      // Цвет для средних танков.
      "MT":  "0x598C33",
      // Цвет для тяжелых танков.
      "HT":  "0xFFF1C9",
      // Цвет для арты.
      "SPG": "0x9374DB",
      // Цвет для ПТ.
      "TD":  "0x79A0C1",
      // Цвет для премиумной техники.
      "premium": "0xFFCC66",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": true
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
      "ally_ally_hit":           "0x00CCFF",            // "teamKiller"
      "ally_ally_kill":          ${ "def.teamKiller" }, // "teamKiller"
      "ally_ally_blowup":        ${ "def.teamKiller" },	// "teamKiller"
      "ally_squadman_hit":       "0x00CCFF",		    // "teamKiller"
      "ally_squadman_kill":      ${ "def.teamKiller" },	// "teamKiller"
      "ally_squadman_blowup":    ${ "def.teamKiller" }, // "teamKiller"
      "ally_enemy_hit":          "0xE40000",			// "enemy"
      "ally_enemy_kill":         "0xD9D8D6",            // "enemy"
	  "ally_enemy_blowup":       "0xD9D8D6",            // "enemy"
      "ally_ally_blowup":        "0xD9D8D6",            // "teamKiller"
      "ally_allytk_hit":         "0x00CCFF",		    // "teamKiller"
      "ally_allytk_kill":        ${ "def.teamKiller" },	// "teamKiller"
      "ally_allytk_blowup":      ${ "def.teamKiller" },	// "teamKiller"
      "ally_enemytk_hit":        ${ "def.enemy" },	    // "enemy"
      "ally_enemytk_kill":       "0xD9D8D6",			// "enemy"
      "ally_enemytk_blowup":     ${ "def.enemy" },		// "enemy"
      "squadman_ally_hit":       ${ "def.teamKiller" },	// "teamKiller"
      "squadman_ally_kill":      ${ "def.teamKiller" },	// "teamKiller"
      "squadman_ally_blowup":    ${ "def.teamKiller" },	// "teamKiller"
      "squadman_squadman_hit":   ${ "def.teamKiller" },	// "teamKiller"
      "squadman_squadman_kill":  ${ "def.teamKiller" },	// "teamKiller"
      "squadman_squadman_blowup":${ "def.teamKiller" },	// "teamKiller"
      "squadman_enemy_hit":      ${ "def.squadman" },   // "enemy"
      "squadman_enemy_kill":     ${ "def.squadman" },	// "enemy"
      "squadman_enemy_blowup":   ${ "def.squadman" },	// "enemy"
      "squadman_allytk_hit":     ${ "def.teamKiller" }, // "teamKiller"
      "squadman_allytk_kill":    ${ "def.teamKiller" },	// "teamKiller"
      "squadman_allytk_blowup":  ${ "def.teamKiller" },	// "teamKiller"
      "squadman_enemytk_hit":    ${ "def.squadman" }, 	// "enemy"
      "squadman_enemytk_kill":   ${ "def.squadman" },	// "enemy"
      "squadman_enemytk_blowup": ${ "def.squadman" },	// "enemy"
      "enemy_ally_hit":          "0x00E800", 			// "ally"
      "enemy_ally_kill":         "0xD9D8D6",			// "ally"
      "enemy_ally_blowup":       "0xD9D8D6",            // "ally"
      "enemy_squadman_hit":      "0xFFD800",		    // "squadman"
      "enemy_squadman_kill":     ${ "def.squadman" },	// "squadman"
      "enemy_squadman_blowup":   ${ "def.squadman" },	// "squadman"
      "enemy_enemy_hit":         ${ "def.enemy" },		// "enemy"
      "enemy_enemy_kill":        "0xD9D8D6",            // "enemy"
      "enemy_enemy_blowup":      ${ "def.enemy" },	    // "enemy"
      "enemy_allytk_hit":        "0x36AD00",			// "ally"
      "enemy_allytk_kill":       ${ "def.ally" },	    // "ally"
      "enemy_allytk_blowup":     ${ "def.ally" },	    // "ally"
      "enemy_enemytk_hit":       ${ "def.enemy" },	    // "enemy"
      "enemy_enemytk_kill":      ${ "def.enemy" },		// "enemy"
      "enemy_enemytk_blowup":    ${ "def.enemy" },		// "enemy"
      "unknown_ally_hit":        "0x36AD00",			// "ally"
      "unknown_ally_kill":       "0xD9D8D6",            // "ally"
      "unknown_ally_blowup":     "0x60FF00",            // "ally"
      "unknown_squadman_hit":    "0xFF7D2E",			// "squadman"
      "unknown_squadman_kill":   ${ "def.squadman" },   // "squadman"
      "unknown_squadman_blowup": ${ "def.squadman" },	// "squadman"
      "unknown_enemy_hit":       ${ "def.enemy" },	    // "enemy"
      "unknown_enemy_kill":      "0xD9D8D6",            // "enemy"
      "unknown_enemy_blowup":    ${ "def.enemy" },		// "enemy"
      "unknown_allytk_hit":      "0x36AD00",		    // "ally"
      "unknown_allytk_kill":     ${ "def.ally" },		// "ally"
      "unknown_allytk_blowup":   ${ "def.ally" },	    // "ally"
      "unknown_enemytk_hit":     ${ "def.enemy" },		// "enemy"
      "unknown_enemytk_kill":    ${ "def.enemy" },	    // "enemy"
      "unknown_enemytk_blowup":  ${ "def.enemy" },	    // "enemy"
      "player_ally_hit":         "0xFFCC66",            // "me"
      "player_ally_kill":        "0xFFCC66",            // "me"
      "player_ally_blowup":      "0xFFCC66",            // "me"
      "player_squadman_hit":     "0xFFCC66",            // "me"
      "player_squadman_kill":    "0xFFCC66",            // "me"
      "player_squadman_blowup":  "0xFFCC66",            // "me"
      "player_enemy_hit":        "0xFFCC66",            // "me"
      "player_enemy_kill":       "0xFFCC66",            // "me"
      "player_enemy_blowup":     "0xFFCC66",            // "me"
      "player_allytk_hit":       "0xFFCC66",            // "me"
      "player_allytk_kill":      "0xFFCC66",            // "me"
      "player_allytk_blowup":    "0xFFCC66",            // "me"
      "player_enemytk_hit":      "0xFFCC66",            // "me"
      "player_enemytk_kill":     "0xFFCC66",            // "me"
      "player_enemytk_blowup":   "0xFFCC66"             // "me"
    },
    // Values ​​below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 201,	"color": ${ "def.hpColor1" } },	// Цвет для значений менее 201
      { "value": 401,	"color": ${ "def.hpColor2" } },	// Цвет для значений менее 401
      { "value": 1001,	"color": ${ "def.hpColor3" } },	// Цвет для значений менее 1001
      { "value": 9999,	"color": ${ "def.hpColor4" } }	// Цвет для остальных значений
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 25,	"color": ${ "def.hpColor1" } },	// Цвет для значений менее 25 проц
      { "value": 50,	"color": ${ "def.hpColor2" } },	// Цвет для значений менее 50 проц
      { "value": 75,	"color": ${ "def.hpColor3" } },	// Цвет для значений менее 75 проц
      { "value": 101,	"color": ${ "def.hpColor4" } }	// Цвет для остальных значений
    ],
    // Dynamic color for XVM Scale 
    // Динамический цвет по шкале XVM 
    // http://www.koreanrandom.com/forum/topic/2625-/
    "x": [
      { "value": 16.5,   "color": ${ "def.color1" } },   // 00   - 16.5 - bad   (20% of players)
      { "value": 33.5,   "color": ${ "def.color2" } },   // 16.5 - 33.5 - below average   (better then 20% of players)
      { "value": 52.5,   "color": ${ "def.color3" } },   // 33.5 - 52.5 - normal     (better then 60% of players)
      { "value": 75.5,   "color": ${ "def.color4" } },   // 52.5 - 75.5 - good       (better then 90% of players)
      { "value": 92.5,   "color": ${ "def.color5" } },   // 75.5 - 92.5 - very good  (better then 99% of players)
      { "value": 999,    "color": ${ "def.color6" } }    // 92.5 - XX   - skillful     (better then 99.9% of players)
    ],
    // Dynamic color by efficiency.
    // Динамический цвет по рейтингу эффективности eff
    "eff": [
      { "value": 610,  "color": ${ "def.color1" } },   //    0 - 609  - bad
      { "value": 865,  "color": ${ "def.color2" } },   //  610 - 849  - below average
      { "value": 1165, "color": ${ "def.color3" } },   //  850 - 1144 - normal
      { "value": 1515, "color": ${ "def.color4" } },   // 1145 - 1474 - good
      { "value": 1835, "color": ${ "def.color5" } },   // 1475 - 1774 - very good
      { "value": 9999, "color": ${ "def.color6" } }    // 1775 - *    - skillful
    ],
    // Dynamic color by WN6 rating
    // Динамический цвет по рейтингу WN6
    "wn6": [
      { "value": 445,  "color": ${ "def.color1" } },  //    0 - 409  - very bad
      { "value": 835,  "color": ${ "def.color2" } },  //  410 - 794  - bad
      { "value": 1210, "color": ${ "def.color3" } },  //  795 - 1184 - normal
      { "value": 1615, "color": ${ "def.color4" } },  // 1185 - 1584 - good
      { "value": 1950, "color": ${ "def.color5" } },  // 1585 - 1924 - very good
      { "value": 9999, "color": ${ "def.color6" } }   // 1925 - *   - unique
    ],
    // Dynamic color by WN8 rating
    // Динамический цвет по рейтингу WN8
    "wn8": [
      { "value": 360,  "color": ${ "def.color1" } },  //    0 - 309  - very bad   (20% of players)
      { "value": 825,  "color": ${ "def.color2" } },  //  310 - 749  - bad        (better then 20% of players)
      { "value": 1385, "color": ${ "def.color3" } },  //  750 - 1309 - normal     (better then 60% of players)
      { "value": 2055, "color": ${ "def.color4" } },  // 1310 - 1964 - good       (better then 90% of players)
      { "value": 2675, "color": ${ "def.color5" } },  // 1965 - 2539 - very good  (better then 99% of players)
      { "value": 9999, "color": ${ "def.color6" } }   // 2540 - *    - unique     (better then 99.9% of players)
    ],
	// Dynamic color by WG rating
    // Динамический цвет по рейтингу WG
    // TODO: update values
    "wgr": [
      { "value": 2405,  "color": ${ "def.color1" } },  // very bad   (20% of players)
      { "value": 4250,  "color": ${ "def.color2" } },  // bad        (better then 20% of players)
      { "value": 6350,  "color": ${ "def.color3" } },  // normal     (better then 60% of players)
      { "value": 8550,  "color": ${ "def.color4" } },  // good       (better then 90% of players)
      { "value": 9960,  "color": ${ "def.color5" } },  // very good  (better then 99% of players)
      { "value": 99999, "color": ${ "def.color6" } }   // unique     (better then 99.9% of players)
    ],
	// Dynamic color for win chance
    // Динамический цвет для шанса на победу
    "winChance": [
      { "value": 24.5, "color": ${ "def.color1" } },
      { "value": 39.5, "color": ${ "def.color2" } },
      { "value": 59.5, "color": ${ "def.color3" } },
      { "value": 74.5, "color": ${ "def.color4" } },
      { "value": 89.5, "color": ${ "def.color5" } },
      { "value": 101,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by win percent.
    // Динамический цвет по проценту побед.
    "winrate": [
      { "value": 46.5,   "color": ${ "def.color1" } },   //  0   - 46.5  - bad			(20% of players)
      { "value": 48.5,   "color": ${ "def.color2" } },   // 46.5 - 48.5  - below average	(better then 20% of players)
      { "value": 51.5,   "color": ${ "def.color3" } },   // 48.5 - 51.5  - normal		(better then 60% of players)
      { "value": 57.5,   "color": ${ "def.color4" } },   // 51.5 - 56.5  - good			(better then 90% of players)
      { "value": 64.5,   "color": ${ "def.color5" } },   // 56.5 - 64.5  - very good		(better then 99% of players)
      { "value": 101,    "color": ${ "def.color6" } }    // 63.5 - 100   - skillful		(better then 99.9% of players)
    ],
    // Dynamic color by kilo-battles 
    // Динамический цвет по количеству кило-боев 
    "kb": [
      { "value": 1.5,   "color": ${ "def.color1" } },   //  0 - 1.5
      { "value": 5.5,   "color": ${ "def.color2" } },   //  1.5 - 5.5
      { "value": 15.5,  "color": ${ "def.color3" } },   //  5.5 - 15.5
      { "value": 29.5,  "color": ${ "def.color4" } },   //  15.5 - 29.5
      { "value": 42.5,  "color": ${ "def.color5" } },   // 29.5 - 42.5
      { "value": 999,   "color": ${ "def.color6" } }    // 42.5 - *
    ],
    // Dynamic color by average level of player tanks 
    // Динамический цвет по среднему уровню танков игрока 
    "avglvl": [
      { "value": 4.5,  "color": ${ "def.color1" } },
      { "value": 7.5,  "color": ${ "def.color0" } },
      { "value": 11,   "color": ${ "def.color6" } }
    ],
    // Dynamic color by battles on current tank 
    // Динамический цвет по количеству боев на текущем танке 
    "t_battles": [
      { "value": 150,    "color": ${ "def.color1" } },   //  0h - 1.5h
      { "value": 350,    "color": ${ "def.color2" } },   //  1.5h - 3.5h
      { "value": 650,    "color": ${ "def.color3" } },   //  3.5h - 6.5h
      { "value": 1050 ,  "color": ${ "def.color4" } },   //  6.5h - 10.5h
      { "value": 1750,   "color": ${ "def.color5" } },   // 10.5h - 17.5h
      { "value": 99999,  "color": ${ "def.color6" } }    // 17.5h - *
    ],
    // Dynamic color by average damage on current tank 
    // Динамический цвет по среднему урону за бой на текущем танке 
    "tdb": [
      { "value": 500,  "color": ${ "def.color1" } },
      { "value": 750,  "color": ${ "def.color2" } },
      { "value": 1000, "color": ${ "def.color3" } },
      { "value": 1800, "color": ${ "def.color4" } },
      { "value": 2500, "color": ${ "def.color5" } },
      { "value": 9999, "color": ${ "def.color6" } }
    ],
    // Dynamic color by average damage efficiency on current tank 
    // Динамический цвет по эффективности урона за бой на текущем танке 
    "tdv": [
      { "value": 0.6,   "color": ${ "def.color1" } },
      { "value": 0.8,   "color": ${ "def.color2" } },
      { "value": 1.0,   "color": ${ "def.color3" } },
      { "value": 1.3,   "color": ${ "def.color4" } },
      { "value": 2.0,   "color": ${ "def.color5" } },
      { "value": 15,    "color": ${ "def.color6" } }
    ],
    // Dynamic color by average frags per battle on current tank 
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке 
    "tfb": [
      { "value": 0.6,   "color": ${ "def.color1" } },
      { "value": 0.8,   "color": ${ "def.color2" } },
      { "value": 1.0,   "color": ${ "def.color3" } },
      { "value": 1.3,   "color": ${ "def.color4" } },
      { "value": 2.0,   "color": ${ "def.color5" } },
      { "value": 15,    "color": ${ "def.color6" } }
    ],
    // Dynamic color by number of spotted enemies per battle on current tank 
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке 
    "tsb": [
      { "value": 0.6,   "color": ${ "def.color1" } },
      { "value": 0.8,   "color": ${ "def.color2" } },
      { "value": 1.0,   "color": ${ "def.color3" } },
      { "value": 1.3,   "color": ${ "def.color4" } },
      { "value": 2.0,   "color": ${ "def.color5" } },
      { "value": 15,    "color": ${ "def.color6" } }
    ],
	// Dynamic color by WN8 effective damage
    // Динамический цвет по эффективному урону по WN8
    "wn8effd": [
      { "value": 0.6,  "color": ${ "def.color1" } },
      { "value": 0.8,  "color": ${ "def.color2" } },
      { "value": 1.0,  "color": ${ "def.color3" } },
      { "value": 1.3,  "color": ${ "def.color4" } },
      { "value": 2.0,  "color": ${ "def.color5" } },
      { "value": 15,   "color": ${ "def.color6" } }
    ],
	// Dynamic color by damage rating (percents for marks on gun)
    // Динамический цвет по рейтингу урона (процент для отметок на стволе)
    "damageRating": [
      { "value": 20,    "color": ${ "def.color1" } },  // 20% of players
      { "value": 60,    "color": ${ "def.color2" } },  // better then 20% of players
      { "value": 90,    "color": ${ "def.color3" } },  // better then 60% of players
      { "value": 99,    "color": ${ "def.color4" } },  // better then 90% of players
      { "value": 99.9,  "color": ${ "def.color5" } },  // better then 99% of players
      { "value": 101,   "color": ${ "def.color6" } }   // better then 99.9% of players
    ],
	// TODO:values
    // Dynamic color by hit ratio (percents of hits)
    // Динамический цвет по проценту попаданий
    "hitsRatio": [
      { "value": 20,    "color": ${"def.color1" } },
      { "value": 60,    "color": ${"def.color2" } },
      { "value": 90,    "color": ${"def.color3" } },
      { "value": 99,    "color": ${"def.color4" } },
      { "value": 99.9,  "color": ${"def.color5" } },
      { "value": 101,   "color": ${"def.color6" } }
    ],
	// Dynamic color by average damage on current tank 
    // Динамический цвет по среднему урону за бой на текущем танке 
    "mydmgtotal": [
      { "value": 500,  "color": ${ "def.color1" } },
      { "value": 750,  "color": ${ "def.color2" } },
      { "value": 1000, "color": ${ "def.color3" } },
      { "value": 1800, "color": ${ "def.color4" } },
      { "value": 2500, "color": ${ "def.color5" } },
      { "value": 9999, "color": ${ "def.color6" } }
    ]
  }
}
