/// @description Draw player 2's abilities to GUI

// draw ability 1 accordingly
if (ability1Ready)
	draw_sprite(spr_evilAbility1, 1, screenWidth / 3, screenHeight - 100);
else
{
	draw_sprite(spr_evilAbility1Used, 1, screenWidth / 3, screenHeight - 100);
	
	// draw time until next use
	draw_text(screenWidth / 3, screenHeight - 125, string(ability1FrameCounter / room_speed));
}

// draw ability 2 accordingly
if (ability2Ready)
	draw_sprite(spr_evilAbility2, 1, screenWidth / 2, screenHeight - 100);
else
{
	draw_sprite(spr_evilAbility2Used, 1, screenWidth / 2, screenHeight - 100);
	draw_text(screenWidth / 2, screenHeight - 125, string(ability2FrameCounter / room_speed));
}

// draw ability 3 accordingly
if (ability3Ready)
	draw_sprite(spr_evilAbility3, 1, (2 * screenWidth) / 3, screenHeight - 100);
else
{
	draw_sprite(spr_evilAbility3Used, 1, (2 * screenWidth) / 3, screenHeight - 100);
	draw_text((2 * screenWidth) / 3, screenHeight - 125, string(ability3FrameCounter / room_speed));
}