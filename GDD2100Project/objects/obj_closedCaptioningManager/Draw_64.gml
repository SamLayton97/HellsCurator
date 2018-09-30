/// @description Draws caption onto the GUI

// set font and alignment of caption text
draw_set_font(font_captions);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

// if caption is active
if (currFrameCounter < totalFrames)
{
	// draw text and semi-transparent background
	draw_sprite(spr_closedCaptioningBox, 0, captionsX, captionsY);
	draw_text(captionsX, captionsY, "TEST");
}