/// @description Draws death screen message to screen

// center text on x-position
draw_set_halign(fa_center);

// set color and font of "You Died" message
draw_set_color(c_red);
if (!global.DyslexiaTextEnabled)
	draw_set_font(font_deathScreen);
else
	draw_set_font(font_deathScreenDyslexia);

// draw "you died" message to screen
draw_text(centerX, centerY - 100, "YOU DIED");

// set font of user prompts according to user preferences
if (!global.DyslexiaTextEnabled)
	draw_set_font(font_playerUI);
else
	draw_set_font(font_playerUIDyslexia);

// draw user prompts to screen (depending on what settings are active
if (global.DisableCheckpoints)
{
	draw_text(centerX, centerY, "Press R to Restart Level");
	draw_text(centerX, centerY + 50, "Press ESC to Quit");
}
else
{
	draw_text(centerX, centerY, "Press Space to Reload Checkpoint");
	draw_text(centerX, centerY + 50, "Press R to Restart Level");
	draw_text(centerX, centerY + 100, "Press ESC to Quit");
}