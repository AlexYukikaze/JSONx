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
    "highVulnerability": "H",
    // Subject has stock turret and top gun can be mounted. Subject is somewhat vulnerable.
    // Субъект имеет стоковую башню и топ орудие может быть установлено. Субъект немного уязвим.
    "lowVulnerability": "I"
  },
	// enemy
	// Союзники
    "ally": {
      "alive": {
        "normal": ${"markersAlive.xc":"ally"},
        "extended": ${"markersAliveAlt.xc":"ally"}
	    //"extended": ${"markersAlive.xc":"ally"}
      },
      "dead": {
        "normal": ${"markersDead.xc":"ally"},
        "extended": ${"markersDeadAlt.xc":"ally"}
      }
    },
	// enemy
	// Противники
    "enemy": {
      "alive": {
        "normal": ${"markersAlive.xc":"enemy"},
        "extended": ${"markersAliveAlt.xc":"enemy"}
		//"extended": ${"markersAlive.xc":"enemy"}
      },
      "dead": {
        "normal": ${"markersDead.xc":"enemy"},
        "extended": ${"markersDeadAlt.xc":"enemy"}
      }
    }
  }
}
