/// @description When player presses the Space button

// if checkpoints are enabled by player
if (!global.DisableCheckpoints)
{
	// restart room
	room_restart();
	
	// play "select" sound effect
	audio_play_sound(sfx_buttonPress, 10, false);
}