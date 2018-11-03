/// @description When player presses ALT key

// if blind mode is enabled, reset level without resetting save state
if (global.BlindModeEnabled)
{
	// resets level
	//room_goto(SetupRoom);
	
	// restart room
	room_restart();

	// play "select" sound effect
	audio_play_sound(sfx_buttonPress, 10, false);
}