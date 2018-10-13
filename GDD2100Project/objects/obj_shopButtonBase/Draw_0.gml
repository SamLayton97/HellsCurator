/// @description Draws button text

// sets appropriate font to use
if (!global.DyslexiaTextEnabled)
	draw_set_font(font_menuButton);
else
	draw_set_font(font_menuButtonDyslexia);

// set color and alignment of button
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
		draw_text(x, y, "-BUY-");
}
// if purchased but not selected
else if (isPurchased && !isSelected)
{
	// draw "SELECT" with appropriate visual feedback
	if (!isMousedOver)
		draw_text(x, y, "SELECT");
	else
		draw_text(x, y, "-SELECT-");
}
// if purchased and selected
else if (isPurchased && isSelected)
{
	// draw "Selected"
	draw_text_color(x, y, "SELECTED", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 100);
}