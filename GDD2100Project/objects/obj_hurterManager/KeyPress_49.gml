/// @description Called when player 2 activates their first ability

// if ability 1 is ready
if (ability1Ready)
{
	// set ability to false
	ability1Ready = false;
	
	// steal a rock from the player's inventory if they have one
	if (obj_player.rockCount > 0) obj_player.rockCount--;
	
	// play swipe sound effect
	audio_play_sound(sfx_swipeRock, 8, false);
}