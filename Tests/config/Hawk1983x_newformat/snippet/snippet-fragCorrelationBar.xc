{
	"$delay": 1000,

	"def": {
    "allied": {					    // подстановка для формата текста
      "align": "center",			// выравнивание
	  "color": 0,
	  "font": "$FieldFont",
	  "bold": true,
	  "alpha": 80
    },
    "enemy": {					    // подстановка для формата текста
      "align": "center",			// выравнивание
	  "color": 0,
	  "font": "$FieldFont",
	  "bold": true,
	  "alpha": 80
    }
  },
	
	"fragCorrelationBar": {
				//"_x": 0,
				//"_y": 0
				//"@textFormat": ${"def.enemy"},
                            //"m_enemyTeamFragsTF": {// _level0.fragCorrelationBar.m_enemyTeamFragsTF
								//"_x": "fragCorrelationBar.m_enemyTeamFragsTF._x + 265",
							  //"_x": "fragCorrelationBar.m_enemyTeamFragsTF._x + 195",
							  //"_x": 725,
							  //"_y": -5,
							  //"_height": 50,          // высота (с запасом)
							  //"$textFormat": ${"def.allied"}
                            //},						
							"m_enemyTeamTF": {
							  "_x": "fragCorrelationBar.m_enemyTeamTF._x - 30",
							  //"_y": 1,
							  //"text": "Противники"	
							  "htmlText": "<TEXTFORMAT INDENT=\"0\" LEFTMARGIN=\"0\" RIGHTMARGIN=\"0\" LEADING=\"2\"><P ALIGN=\"CENTER\"><FONT FACE=\"a_RubricaCn\" SIZE=\"20\" COLOR=\"#C20000\" KERNING=\"0\"><b>Враги</b></FONT></P></TEXTFORMAT>"
                            },
							"m_alliedTeamTF": {
							  "_x": "fragCorrelationBar.m_alliedTeamTF._x + 30",
							  //"_y": 1,
							  //"text": "Союзники"
							   "htmlText": "<TEXTFORMAT INDENT=\"0\" LEFTMARGIN=\"0\" RIGHTMARGIN=\"0\" LEADING=\"2\"><P ALIGN=\"CENTER\"><FONT FACE=\"a_RubricaCn\" SIZE=\"20\" COLOR=\"#3D9B00\" KERNING=\"0\">Наши</FONT></P></TEXTFORMAT>"
                            //},
							//"redBg": {// [Scaleform UIComponent greenBg]
							//"_y": -70
							//},
							//"greenBg": {// [Scaleform UIComponent greenBg]
							//"_y": 70
							//},
							//"enemyMarkers": {
							//"_alpha": 0
							//},
							//"alliedMarkers": {
							//"_alpha": 0
							//},
                            //"m_alliedTeamFragsTF": {// _level0.fragCorrelationBar.m_alliedTeamFragsTF
								//"_x": "fragCorrelationBar.m_alliedTeamFragsTF._x - 265",
							  //"_x": "fragCorrelationBar.m_alliedTeamFragsTF._x - 195",
							  //"_x": 265,
							  //"_y": -5,
							  //"_height": 50,          // высота (с запасом)
							  //"$textFormat": ${"def.enemy"}
                            }
			}
}