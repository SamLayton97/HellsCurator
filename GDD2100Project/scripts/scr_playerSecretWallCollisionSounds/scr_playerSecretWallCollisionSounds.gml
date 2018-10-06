// handle step event of player colliding with secret walls
// if wall south of player,
if (place_meeting(x, y + 24, obj_secretWall))
{
	// if colliding with wall sound not already playing, play it behind player
	if (!collidingWithSecretWall)
	{
		audio_play_sound_at(sfx_secretWallHit, x, y + 24, 0, 24, 24, 10, false, 5);
		collidingWithSecretWall = true;
	}
}
// if wall north of player
else if (place_meeting(x, y - 24, obj_secretWall))
{
	// if colliding with wall sound not already playing, play it in front of player
	if (!collidingWithSecretWall)
	{
		audio_play_sound_at(sfx_secretWallHit, x, y - 24, 0, 24, 24, 10, false, 5);
		collidingWitSecrethWall = true;
	}
}
// if wall west of player
else if (place_meeting(x - 24, y, obj_secretWall))
{
	// if colliding with wall sound not already playing, play it left of player
	if (!collidingWithSecretWall)
	{
		audio_play_sound_at(sfx_secretWallHit, x + 24, y, 0, 24, 24, 10, false, 5);
		collidingWithSecretWall = true;
	}
}
// if wall east of player
else if (place_meeting(x + 24, y, obj_secretWall))
{
	// if colliding with wall sound not already playing, play it right of player
	if (!collidingWithSecretWall)
	{
		audio_play_sound_at(sfx_secretWallHit, x - 24, y, 0, 24, 24, 10, false, 5);
		collidingWithSecretWall = true;
	}
}
// otherwise, set "colliding to wall" to false
else
	collidingWithSecretWall = false;