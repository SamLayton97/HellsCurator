/// @description Called when room ends

// if game over voice over is playing, stop it
if (audio_is_playing(bld_snd_gameOverVoiceOver))
	audio_stop_sound(bld_snd_gameOverVoiceOver);