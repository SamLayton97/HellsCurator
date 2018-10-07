// handle step event of player colliding with puzzle wall

// if wall south of player,
if (place_meeting(x, y + 36, obj_puzzleGate))
{
	// if colliding with wall sound not already playing, play it behind player
	if (!collidingWithPuzzleGate && !audio_is_paused(sfx_puzzleGateSoundHint))
	{
		audio_play_sound_at(sfx_puzzleGateSoundHint, x, y + 36, 0, 36, 36, 10, false, 5);
		collidingWithPuzzleGate = true;
	}
}
// if wall north of player
else if (place_meeting(x, y - 36, obj_puzzleGate))
{
	// if colliding with wall sound not already playing, play it in front of player
	if (!collidingWithPuzzleGate && !audio_is_paused(sfx_puzzleGateSoundHint))
	{
		audio_play_sound_at(sfx_puzzleGateSoundHint, x, y - 36, 0, 36, 36, 10, false, 5);
		collidingWithPuzzleGate = true;
	}
}
// if wall west of player
else if (place_meeting(x - 36, y, obj_puzzleGate))
{
	// if colliding with wall sound not already playing, play it left of player
	if (!collidingWithPuzzleGate && !audio_is_paused(sfx_puzzleGateSoundHint))
	{
		audio_play_sound_at(sfx_puzzleGateSoundHint, x - 36, y, 0, 36, 36, 10, false, 5);
		collidingWithPuzzleGate = true;
	}
}
// if wall east of player
else if (place_meeting(x + 36, y, obj_puzzleGate))
{
	// if colliding with wall sound not already playing, play it right of player
	if (!collidingWithPuzzleGate && !audio_is_paused(sfx_puzzleGateSoundHint))
	{
		audio_play_sound_at(sfx_puzzleGateSoundHint, x + 36, y, 0, 35, 36, 10, false, 5);
		collidingWithPuzzleGate = true;
	}
}
// otherwise, set "colliding to wall" to false
else
	collidingWithPuzzleGate = false;