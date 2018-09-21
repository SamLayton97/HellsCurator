/// @description Used for initialization

// declare draw radius variables
drawRadius = 0;
growingRadius = true;
growthPerFrame = (radius * 2) / room_speed;

// save screen dimensions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);

// create list of spectres to calm
toCalm = ds_list_create();

// with all spectre objects
with (obj_spectre)
{
	// if spectre is within bell's range, add it to list
	if (distance_to_point(other.x, other.y) <= other.radius)
		ds_list_add(other.toCalm, id);
}

// if "to calm" list isn't empty
if (!ds_list_empty(toCalm))
{
	// for each spectre in list
	for (var i = 0; i < ds_list_size(toCalm); i++)
	{
		currSpectre = ds_list_find_value(toCalm, i);
		
		// "calm" them if they are currently investigating point
		with (currSpectre)
		{
			if (currState == spectreState.investigate || currState == spectreState.search)
			{
				// tell spectre to go back to patrol
				currState = spectreState.goBack;
			}
		}
	}
}
