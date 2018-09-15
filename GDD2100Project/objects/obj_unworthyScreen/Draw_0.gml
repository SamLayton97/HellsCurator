/// @description Draws death screen message to screen

// center text on x-position
draw_set_halign(fa_center);

// draw "you died" message to screen
draw_set_font(font_deathScreen);
draw_set_color(c_red);
draw_text(x, y - 100, "You Are Not Yet Worthy");

// draw user prompts to screen
draw_set_font(font_playerUI);
draw_text(x, y, "Demo Complete");
draw_text(x, y + 50, "Press ESC to Quit");