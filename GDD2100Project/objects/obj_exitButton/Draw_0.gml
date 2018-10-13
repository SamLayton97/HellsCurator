/// @description Draws button text to screen

// sets appropriate font to use
if (!global.DyslexiaTextEnabled)
	draw_set_font(font_menuButton);
else
	draw_set_font(font_menuButtonDyslexia);

// set color and alignment of button
draw_set_halign(fa_center);
draw_set_color(c_white);

// writes message and provides user feedback
if (!isMousedOver)
	draw_text(x, y, "EXIT");
else
	draw_text(x, y, "-EXIT-");