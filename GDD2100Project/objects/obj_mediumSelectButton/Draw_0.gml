/// @description Draws button text to screen

// sets draw font, color, and alignment
draw_set_font(font_menuButton);
draw_set_halign(fa_center);
draw_set_color(c_white);

// writes message and provides user feedback
if (!isMousedOver)
	draw_text(x, y, "Medium");
else
{
	draw_text(x, y, "-Medium-");
	draw_text(screenWidth / 2, (2 * screenHeight) / 3,
	"For average players.");
	draw_text(screenWidth / 2, ((2 * screenHeight) / 3) + 50,
	"The standard sneaking experience");
}