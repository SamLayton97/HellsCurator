// handle playing sounds for moving

// if player displaced their position between frames and walking sound isn't playing
if (!audio_is_playing(sfx_walkCycle) && !(x == xprevious && y == yprevious))
	audio_play_sound(sfx_walkCycle, 4, true);

// if player is stationary, stop sound
if (x == xprevious && y == yprevious)
	audio_stop_sound(sfx_walkCycle);

/*
// if walk cycle isn't already playing
if (!audio_is_playing(sfx_walkCycle))
{
	// handle cardinal direction walking sounds
	if (x == xprevious && y > yprevious)		// SOUTH
		audio_play_sound_at(sfx_walkCycle, x, y + 5, 0, 5, 5, 1, false, 4);
	else if (x == xprevious && y < yprevious)	// NORTH
		audio_play_sound_at(sfx_walkCycle, x, y - 5, 0, 5, 5, 1, false, 4);
	else if (x > xprevious && y == yprevious)	// EAST
		audio_play_sound_at(sfx_walkCycle, x + 5, y, 0, 5, 5, 1, false, 4);
	else if (x < xprevious && y == yprevious)	// WEST
		audio_play_sound_at(sfx_walkCycle, x, y + 5, 0, 5, 5, 1, false, 4);
	// handle diagonal direction walking sounds
	else if (x > xprevious && y < yprevious)	// NE
		audio_play_sound_at(sfx_walkCycle, x + 5, y - 5, 0, 5, 5, 1, false, 4);
	else if (x < xprevious && y < yprevious)	// NW
		audio_play_sound_at(sfx_walkCycle, x - 5, y - 5, 0, 5, 5, 1, false, 4);
	else if (x > xprevious && y > yprevious)	// SE
		audio_play_sound_at(sfx_walkCycle, x + 5, y + 5, 0, 5, 5, 1, false, 4);
	else if (x < xprevious && y > yprevious)	// SW
		audio_play_sound_at(sfx_walkCycle, x - 5, y + 5, 0, 5, 5, 1, false, 4);
	// otherwise (player is stationary)
	else
		// stop walk cycle sound
		audio_stop_sound(sfx_walkCycle);
}
*/