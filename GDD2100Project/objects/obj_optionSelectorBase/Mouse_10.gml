/// @description When player mouses over button

// switch to proper highlighed sprite and play appropriate voice over
if (!isSelected)
{
	// if blind mode is enabled
	if (global.BlindModeEnabled)
	{	
		// stop all other sounds and restart menu ambient
		audio_stop_all();
		audio_play_sound(bgrSound_menuAmbient, 5, true);
	
		// voice enable function
		audio_play_sound(enableSound, 10, false);
	}
	
	// switch sprite
	sprite_index = spr_uncheckedBoxHover;
}
else
{
	// if blind mode is enabled
	if (global.BlindModeEnabled)
	{	
		// stop all other sounds and restart menu ambient
		audio_stop_all();
		audio_play_sound(bgrSound_menuAmbient, 5, true);
	
		// voice disable function
		audio_play_sound(disableSound, 10, false);
	}
	
	// switch sprite
	sprite_index = spr_checkedBoxHover;
}
	
// play mouse over sound effect
audio_play_sound(sfx_buttonHover, 10, false);
