/// @description Draws informational text to UI 

draw_self();

// set font and alignment of text
draw_set_font(font_optionsMenu);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

// draw appropriate message to right of button
draw_text_color(x + 75, y, optionText, c_white, c_white, c_white, c_white, 1);