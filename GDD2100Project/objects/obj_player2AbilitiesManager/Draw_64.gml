/// @description Draw player 2's abilities to GUI

// draw ability 1 accordingly
if (ability1Ready)
	draw_sprite(spr_friendlyAbility1, 1, screenWidth / 3, screenHeight - 100);
else
{
	draw_sprite(spr_friendlyAbility1Used, 1, screenWidth / 3, screenHeight - 100);
	
	// draw time until next use
	draw_text(screenWidth / 3, screenHeight - 125, string(ability1FrameCounter / room_speed));
}

// draw ability 2 accordingly
if (ability2Ready)
	draw_sprite(spr_friendlyAbility2, 1, screenWidth / 2, screenHeight - 100);
else
	draw_sprite(spr_friendlyAbility2Used, 1, screenWidth / 2, screenHeight - 100);

// draw ability 3 accordingly
if (ability3Ready)
	draw_sprite(spr_friendlyAbility3, 1, (2 * screenWidth) / 3, screenHeight - 100);
else
{
	draw_sprite(spr_friendlyAbility3Used, 1, (2 * screenWidth) / 3, screenHeight - 100);
	draw_text((2 * screenWidth) / 3, screenHeight - 125, string(ability3FrameCounter / room_speed));
}