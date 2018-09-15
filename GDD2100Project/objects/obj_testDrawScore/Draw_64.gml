/// @description TEST: Draw score to GUI

// draws player score to UI
draw_set_font(font_menuButton);
draw_set_halign(fa_center);
draw_text(camera_get_view_width(0) / 2, camera_get_view_height(0) / 2, string(global.PlayerScore));