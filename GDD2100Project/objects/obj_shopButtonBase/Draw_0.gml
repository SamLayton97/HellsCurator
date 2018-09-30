/// @description Draws button text

// set font, color, and alignment of text
draw_set_font(font_menuButton);
draw_set_halign(fa_center);
draw_set_color(c_white);

// if not yet purchased by user
if (!isPurchased)
{
	// if not moused over, draw price
	if (!isMousedOver)
		draw_text(x, y, myPrice);
	// otherwise, draw purchase feedback
	else
		draw_text(x, y, "-Buy-");
}
// if purchased but not selected
else if (isPurchased && !isSelected)
{
	// draw "SELECT" with appropriate visual feedback
	if (!isMousedOver)
		draw_text(x, y, "Select");
	else
		draw_text(x, y, "-Select-");
}
// if purchased and selected
else if (isPurchased && isSelected)
{
	// draw "Selected"
	draw_text_color(x, y, "Selected", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 100);
}