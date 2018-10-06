/// @description When room begins

// play ambient sounds
audio_play_sound(bgrSound_menuAmbient, 5, true);

// if on title screen and not in blind mode, play enable sound
if (room = TitleScreenRoom && !global.BlindModeEnabled)
	audio_play_sound(bld_snd_EnableBlindMode, 10, false);