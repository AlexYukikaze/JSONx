{
"circles": {
	"enabled": true,
	"view": [	//Основные круги.
				//445 метров - максимальная дистанция засвета
		{ "enabled": true, "distance": 50, "scale": 1, "thickness": 0.01, "alpha": 95, "color": "0xFFFFFF" },
        { "enabled": true, "distance": 400, "scale": 1, "thickness": 0.01, "alpha": 50, "color": "0x00FFFF" },
		{ "enabled": true, "distance": 422, "scale": 1, "thickness": 10, "alpha": 7, "color": "0x00FFFF" },
		{ "enabled": true, "distance": 445, "scale": 1, "thickness": 0.01, "alpha": 50, "color": "0x00FFFF" },
		{ "enabled":  false, "distance": "blindarea", "scale": 1, "thickness": 0.75, "alpha": 80, "color": "0x3EB5F1" },  // #3EB5F1
		// Дополнительные круги:
        { "enabled": true, "distance": "standing", "scale": 1, "thickness": 1.0, "alpha": 60, "color": "0xFF0000" }, // #FF0000 - реальная дальность обзора танка стоя
        { "enabled": true, "distance": "motion", "scale": 1, "thickness": 1.0, "alpha": 60, "color": "0x0000FF" },   // #0000FF - реальная дальность обзора танка в движении
        { "enabled": true, "distance": "dynamic", "scale": 1, "thickness": 1.0, "alpha": 60, "color": "0xB200FF" }   // #B200FF - реальная дальность обзора танка c учётом стоит/движется
		],
	"artillery": { "enabled": true, "alpha": 100, "color": "0xFFFF00", "thickness": 1 },
	"shell":     { "enabled": true, "alpha": 100, "color": "0xFFFF00", "thickness": 1 },
	"special": [
	//{ "uk:GB77_FV304":   { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	//{ "ussr:Object_212": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	//{ "uk:GB31_Conqueror_Gun": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	//{ "france:Bat_Chatillon155_58": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	//{ "usa:T92": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	//{ "germany:G_E": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	//{ "ussr:Object_261": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
	]
	}
}