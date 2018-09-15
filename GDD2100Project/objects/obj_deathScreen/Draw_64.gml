/// @description Draws death screen message to screen

// center text on x-position
draw_set_halign(fa_center);

// draw "you died" message to screen
draw_set_font(font_deathScreen);
draw_set_color(c_red);
draw_text(centerX, centerY - 100, "You Died");

// draw user prompts to screen
draw_set_font(font_playerUI);
draw_text(centerX, centerY + 50, "Press R to Restart");
draw_text(centerX, centerY, "Press ESC to Quit");