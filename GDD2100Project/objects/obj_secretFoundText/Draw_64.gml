/// @description Draws visual feedback to GUI

// set font and alignment
draw_set_font(font_playerUI);
draw_set_halign(fa_center);

// draw feedback message
draw_text(screenWidth / 2, (screenHeight / 2) - 100, "Secret Found!");