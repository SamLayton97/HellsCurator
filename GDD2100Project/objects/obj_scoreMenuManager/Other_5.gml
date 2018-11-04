/// @description When room ends

// stop looping appropriate bgr music
if (audio_is_playing(sfx_escapeMusic))
	audio_stop_sound(sfx_escapeMusic);
else if (audio_is_playing(sfx_curseLiftedMusic))
	audio_stop_sound(sfx_curseLiftedMusic);