/// @description Draws player related info to UI

// draw player sprite
draw_self();

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
