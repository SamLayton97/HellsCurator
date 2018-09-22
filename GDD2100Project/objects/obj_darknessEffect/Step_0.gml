/// @description Called once per frame

// if player exists, follow their position
if (instance_exists(obj_player))
{
	x = obj_player.x;
	y = obj_player.y;
}
// otherwise (player is killed),
else
{
	// freeze animation and stop heartbeat sound
	image_speed = 0;
	audio_stop_sound(sfx_heartBeat);
}

// if darkness reaches end of animation and not already paused
if (image_speed > 0 && image_index > image_number - 1)
{
	image_speed = 0;
}