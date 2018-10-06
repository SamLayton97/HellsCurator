// handle step event of player related to colliding with walls

// if wall south of player,
if (place_meeting(x, y + 24, base_solidObject))
{
	// if colliding with wall sound not already playing, play it behind player
	if (!collidingWithWall)
	{
		audio_play_sound_at(sfx_wallHit, x, y + 24, 0, 24, 24, 10, false, 5);
		collidingWithWall = true;
	}
}
// if wall north of player
else if (place_meeting(x, y - 24, base_solidObject))
{
	// if colliding with wall sound not already playing, play it in front of player
	if (!collidingWithWall)
	{
		audio_play_sound_at(sfx_wallHit, x, y - 24, 0, 24, 24, 10, false, 5);
		collidingWithWall = true;
	}
}
// if wall west of player
else if (place_meeting(x - 24, y, base_solidObject))
{
	// if colliding with wall sound not already playing, play it left of player
	if (!collidingWithWall)
	{
		audio_play_sound_at(sfx_wallHit, x + 24, y, 0, 24, 24, 10, false, 5);
		collidingWithWall = true;
	}
}
// if wall east of player
else if (place_meeting(x + 24, y, base_solidObject))
{
	// if colliding with wall sound not already playing, play it right of player
	if (!collidingWithWall)
	{
		audio_play_sound_at(sfx_wallHit, x - 24, y, 0, 24, 24, 10, false, 5);
		collidingWithWall = true;
	}
}
// otherwise, set "colliding to wall" to false
else
	collidingWithWall = false;
