/// @description Draws caption onto the GUI

// set font and alignment of feedback text
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if (!global.DyslexiaTextEnabled)
	draw_set_font(font_playerUI);
else
	draw_set_font(font_playerUIDyslexia);

// if message is active
if (currFrameCounter < totalFrames)
{
	// draw text and semi-transparent background
	// TODO: replace background sprite
	draw_sprite(spr_closedCaptioningBox, 0, textX, textY);
	draw_text(textX, textY, text);
}
