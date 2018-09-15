/// @description Draws remaining time to GUI

// draw remaining time in seconds
draw_set_font(font_timerUI);
draw_set_halign(fa_center);
draw_text(camera_get_view_width(0) / 2, 10, string(currTimeFrames / room_speed));