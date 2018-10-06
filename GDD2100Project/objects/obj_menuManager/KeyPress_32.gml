/// @description When user presses space in a menu

// if blind mode not enabled
if (!global.BlindModeEnabled)
{
	// stop "Enable Blind Mode" voice if playing
	if (audio_is_playing(bld_snd_WelcomeBlindUser))
		audio_stop_sound(bld_snd_WelcomeBlindUser);
	
	// play "Blind Mode Enabled" voice
	audio_play_sound(bld_snd_BlindModeEnabled, 10, false);
	
	// enable blind mode
	global.BlindModeEnabled = true;
}