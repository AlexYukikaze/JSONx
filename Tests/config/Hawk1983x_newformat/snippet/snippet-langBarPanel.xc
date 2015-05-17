  {
            "$delay": 100,
            // langBarPanel используем тупо как счетчик для переменной langBarPanel._y
            "langBarPanel": {
                "$interval": 5,             // влияет на скорость обновления переменной
                "_y": "langBarPanel._y + 2" // прирост переменной за один шаг
            }
			}