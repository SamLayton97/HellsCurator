/// @description When ALT key is pressed

// if in blind mode, reload level without resetting save state
if (global.BlindModeEnabled)
{
	// resets level
	room_goto(SetupRoom);

	// play "select" sound effect
	audio_play_sound(sfx_buttonPress, 10, false);
}