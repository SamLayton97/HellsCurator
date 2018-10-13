/// @description Draws remaining time to GUI

// set font and alignment according to user preferences
draw_set_halign(fa_center);
if (!global.DyslexiaTextEnabled)
	draw_set_font(font_timerUI);
else
	draw_set_font(font_timerUIDyslexia);

// draw remaining time in seconds
draw_text(camera_get_view_width(0) / 2, 50, string(currTimeFrames / room_speed));