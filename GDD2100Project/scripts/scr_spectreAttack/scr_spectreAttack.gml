// step script used by spectre in attack state

// if there is player to chase, chase them
if (instance_number(obj_player) > 0)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = attackSpeed;
}
// otherwise
else
{
	// stop spectre and set state to idle
	speed = 0;
	currState = spectreState.idle;
	
	// change sprites to reflect state change
	sprite_index = spr_spectrePatrol;
	myVisionCone.sprite_index = spr_spectreVConePatrol;
}