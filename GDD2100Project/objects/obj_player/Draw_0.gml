/// @description Draws player related info to UI

// draw palyer sprite
draw_self();

// if player has rocks to throw, draw rock count above them
if (rockCount > 0)
{
	draw_set_color(c_white);
	draw_set_font(font_playerUI);
	draw_text(x + 45, y - 45, string(rockCount));
}