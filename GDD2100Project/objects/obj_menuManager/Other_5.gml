/// @description When room ends

// stop ambient sounds
audio_stop_sound(bgrSound_menuAmbient);
audio_stop_sound(bgr_bookLoop);

// if blind mode voice overs continue to play, stop them
if (audio_is_playing(bld_snd_instructions))
	audio_stop_sound(bld_snd_instructions);
else if (audio_is_playing(bld_snd_selectDifficulty))
	audio_stop_sound(bld_snd_selectDifficulty);
else if (audio_is_playing(bld_snd_multiplayerSelect))
	audio_stop_sound(bld_snd_multiplayerSelect);
else if (audio_is_playing(bld_snd_WelcomeBlindUser))
	audio_stop_sound(bld_snd_WelcomeBlindUser);
else if (audio_is_playing(bld_snd_settingTheStage))
	audio_stop_sound(bld_snd_settingTheStage);