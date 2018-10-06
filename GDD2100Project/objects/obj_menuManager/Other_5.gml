/// @description When room ends

audio_stop_sound(bgrSound_menuAmbient);

// if blind mode instructions are playing, stop them
if (audio_is_playing(bld_snd_instructions))
	audio_stop_sound(bld_snd_instructions);