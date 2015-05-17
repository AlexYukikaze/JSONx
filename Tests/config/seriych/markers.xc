/**
 * Over-target markers. All settings moved to separate files.
 * Маркеры над танками. Все настройки вынесены в отдельные файлы.
 */
{
  "markers": {
    // true - use standard client vehicle markers.
    // true - использовать стандартные маркеры клиента.
    "useStandardMarkers": false,
    // {{turret}} marker display strings.
    // Отображаемые строки {{turret}} маркера.
    "turretMarkers": {
        // Subject has stock turret and top gun can not be mounted. Subject is highly vulnerable.
        // Субъект имеет стоковую башню и топ орудие не может быть установлено. Субъект сильно уязвим.
        "highVulnerability": "<font color='#FFFFFF'>P</font>",  // "P" at font "Wingdings" - flag
        // Subject has stock turret and top gun can be mounted. Subject is somewhat vulnerable.
        // Субъект имеет стоковую башню и топ орудие может быть установлено. Субъект немного уязвим.
        "lowVulnerability": "<font color='#FFFF00'>P</font>"    // "P" at font "Wingdings" - flag
    },
    // ally
    // союзники
    "ally": {
      "alive": {
        "normal": ${"markersAlive.xc":"ally"},
        "extended": ${"markersAlive.xc":"allyExtended"}
      },
      "dead": {
        "normal": ${"markersDead.xc":"ally"},
        "extended": ${"markersDead.xc":"allyExtended"}
      }
    },
    // enemy
    // противники
    "enemy": {
      "alive": {
        "normal": ${"markersAlive.xc":"enemy"},
        "extended": ${"markersAlive.xc":"enemyExtended"}
      },
      "dead": {
        "normal": ${"markersDead.xc":"enemy"},
        "extended": ${"markersDead.xc":"enemyExtended"}
      }
    }
  }
}
