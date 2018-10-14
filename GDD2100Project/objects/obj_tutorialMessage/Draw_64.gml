/// @description Draws text box to GUI if applicable

// if player is colliding with tutorial message
if (isColliding)
{
	// set font and alignment of text
	draw_set_font(font_tutorialMessage);
	draw_set_halign(fa_center);
	//draw_set_valign(fa_center);
	
	// draw text box onto GUI
	draw_sprite(spr_tutorialMessageTextBox, 0, drawX, drawY);
	
	// draw message writer's name and message
	draw_text_color(drawX, drawY - (.5 * boxHeight) + stringHeight, myName, c_red, c_red, c_red, c_red, 1);
	draw_text_ext_color(drawX, drawY, myMessage, stringHeight / 2, boxWidth * 0.8, 
	c_black, c_black, c_black, c_black, 1);
}