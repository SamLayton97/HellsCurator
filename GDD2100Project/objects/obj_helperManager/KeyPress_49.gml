/// @description Called when player 2 activates their first ability

// if ability 1 is ready
if (ability1Ready)
{
	// set ability to false
	ability1Ready = false;
	
	// add a rock to player's inventory
	obj_player.rockCount++;
	audio_play_sound(sfx_pickup, 8, false);
}