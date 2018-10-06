/// @description When player mouses over button

// set button to be moused over
isMousedOver = true;

// play hover sound effect
audio_play_sound(sfx_buttonHover, 10, false);

// if blind mode is enabled
if (global.BlindModeEnabled)
{	
	// TEST: voice dummy function
	audio_play_sound(mySound, 10, false);
}