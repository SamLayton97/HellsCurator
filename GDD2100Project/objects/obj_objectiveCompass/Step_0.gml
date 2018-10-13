/// @description Called once per frame

// if player is alive, calculate angle between player and their objective
if (instance_exists(obj_player))
	drawAngle = point_direction(obj_player.x, obj_player.y, objective.x, objective.y);
// otherwise, set compass angle to be north
else
	drawAngle = 90;