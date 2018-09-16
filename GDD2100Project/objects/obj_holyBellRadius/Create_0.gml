/// @description Used for initialization

// declare draw radius variables
drawRadius = 0;
growingRadius = true;
growthPerFrame = (radius * 2) / room_speed;

// save screen dimensions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);

// if spectre exists in game
if (instance_number(obj_spectre) > 0)
{
	// if spectre is currently investigating / searching and within bell's range
	with(obj_spectre)
	{
		if ((currState == spectreState.investigate || currState == spectreState.search)
		&& point_distance(x, y, other.x, other.y))
		{
			// tell spectre to go back to patrol
			currState = spectreState.goBack;
		}
	}
}