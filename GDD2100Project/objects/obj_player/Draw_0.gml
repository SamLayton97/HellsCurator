/// @description Draws player related info to UI

// draw palyer sprite
draw_self();

// if player has rocks to throw, draw rock count above them
if (rockCount > 0)
{
	draw_set_color(c_white);
	draw_set_font(font_playerUI);
	draw_text(x + 55, y - 55, string(rockCount));
}

// if investigate directional aid counter is less than max
// and attack indicator isn't active
if (investigateIndicatorCounter < maxIndicatorFrames && attackIndicatorCounter == maxIndicatorFrames)
{
	// draw indicator at proper angle around PC
	draw_text_color(x + 45 * cos(investigateIndicatorAngle), y - 45 * sin(investigateIndicatorAngle), "?",
	c_yellow, c_yellow, c_yellow, c_yellow, 1);
}

// if attack directional aid counter is less than max
if (attackIndicatorCounter < maxIndicatorFrames)
{
	// draw indicator at proper angle around PC
	draw_text_color(x + 45 * cos(attackIndicatorAngle), y - 45 * sin(attackIndicatorAngle), "!",
	c_red, c_red, c_red, c_red, 1);
}