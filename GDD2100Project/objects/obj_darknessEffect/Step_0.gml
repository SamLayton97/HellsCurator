/// @description Called once per frame

// if player exists, follow their position
if (instance_exists(obj_player))
{
	x = obj_player.x;
	y = obj_player.y;
}
// otherwise (player is killed), freeze animation
else
	image_speed = 0;

// if darkness reaches end of animation and not already paused
if (image_speed > 0 && image_index > image_number - 1)
{
	image_speed = 0;
}