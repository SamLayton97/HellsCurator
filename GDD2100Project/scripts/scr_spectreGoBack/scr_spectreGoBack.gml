// step script used by spectre in "Go Back" state

// move towards "exit point" on old path
direction = point_direction(x, y, exitPointX, exitPointY);
speed = patrolSpeed;

// if sprectre reaches return point within certain tolerance
if ((x <= exitPointX + 8 && x >= exitPointX - 8)
&& (y <= exitPointY + 8 && y >= exitPointY - 8))
{
	// stop spectre and set its state back to patrol
	speed = 0;
	currState = spectreState.patrol;
	
	// set sprites to reflect state change
	sprite_index = spr_spectrePatrol;
	myVisionCone.sprite_index = spr_spectreVConePatrol;
	
	// start spectre back on old path at exit position
	path_start(myPath, patrolSpeed, path_action_continue, true);
	path_position = exitPosition;
}