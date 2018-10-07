// handle playing sounds for moving

// if player displaced their position between frames and walking sound isn't playing
if (!audio_is_playing(sfx_walkCycle) && !(x == xprevious && y == yprevious))
	audio_play_sound(sfx_walkCycle, 4, true);

// if player is stationary, stop sound
if (x == xprevious && y == yprevious)
	audio_stop_sound(sfx_walkCycle);