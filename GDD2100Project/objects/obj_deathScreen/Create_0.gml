/// @description Used for initialization

// calculates coordinates of center screen
centerX = camera_get_view_width(0) / 2;
centerY = camera_get_view_height(0) / 2;

// if blind mode is enabled, play appropriate voice over
if (global.BlindModeEnabled)
{
	// if no non-default save state, play appropriate voice over
	if (global.SaveStateX == 0 && global.SaveStateY == 0)
		audio_play_sound(bld_snd_gameOverVoiceOver, 10, false);
	// otherwise (i.e., save state created),
	else
		audio_play_sound(bld_snd_gameOverVoiceWithSaveState, 10, false);
}