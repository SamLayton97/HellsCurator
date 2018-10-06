/// @description When player mouses over button

// set button to be moused over
isMousedOver = true;

// if blind mode is enabled
if (global.BlindModeEnabled)
{	
	// stop all other sounds and restart menu ambient
	audio_stop_all();
	audio_play_sound(bgrSound_menuAmbient, 5, true);
	
	// voice dummy function
	audio_play_sound(mySound, 10, false);
}

// play hover sound effect
audio_play_sound(sfx_buttonHover, 10, false);