/**
 * Visual elements.
 * Двигать визуальные элименты.
 * Подгружается с файла "battle.xc"
 *
 * GUI elements settings (experts only)
 * Настройки графических элементов (только для экспертов!)
 *
 * TODO: documentation
 * Нужно описать:
 * 1. Общие принципы (корень начинается с _root)
 * 2. Команды ("$log": %level%, "$textFormat": {}, "%var%": "$log")
 * 3. Математические выражения ("y": "HEIGHT / 2 + sin(_x)")
 * 4. Контексты выполнения:
 *      { WIDTH:width, HEIGHT:height }, // globals
 *      obj,                            // current object
 *      _root,                          // _root
 *      Config.s_config,                // config
 *      Defines                         // global defines
 */
{
  // Visual elements
  // Двигать визуальные элименты
  "elements": [
		${"snippet/snippet-minimap.xc":"."},					// minimap						// миникарта
		${"snippet/snippet-leftPanel.xc":"."},					// leftPanel					// панель уши левые
		${"snippet/snippet-rightPanel.xc":"."},					// rightPanel					// панель уши правые
		${"snippet/snippet-fragCorrelationBar.xc":"."},			// fragCorrelationBar			// счёт боя
		${"snippet/snippet-debugPanel.xc":"."},					// debugPanel					// пинг-лаг-фпс панель
		${"snippet/snippet-battleTimer.xc":"."},				// battleTimer					// время боя
		${"snippet/snippet-sixthSenseIndicator.xc":"."},		// sixthSenseIndicator			// индикатор(шестое чувство)
		${"snippet/snippet-vehicleEr-rorsPanel.xc":"."},		// vehicleErrorsPanel			// сообщения в центре экрана(о снаряжении, командире)
		${"snippet/snippet-timerBig.xc":"."},					// timerBig						// таймер до начала боя
		${"snippet/snippet-drownTimer.xc":"."},					// drownTimer					// таймер когда тонет танк
		${"snippet/snippet-consumablesPanel.xc":"."},			// consumablesPanel				// панель расходники и патроны
		${"snippet/snippet-vehicleMessagesPanel.xc":"."},		// vehicleMessagesPanel			// сообщения внизу в центре экрана(о том,кто попал,повредил тебя
		${"snippet/snippet-teamBasesPanel.xc":"."},				// teamBasesPanel				// полоса захвата баз
		${"snippet/snippet-firetimer.xc":"."}                                                   // таймер пожара	
	]
}			
