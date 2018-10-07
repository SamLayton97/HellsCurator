/// @description When player presses the CTRL button

// if in blind mode, update "save state" location
if (global.BlindModeEnabled)
{
	// update save state location
	global.SaveStateX = x;
	global.SaveStateY = y;
	
	// play save state sound
	audio_play_sound(sfx_updateSaveState, 4, false);
}