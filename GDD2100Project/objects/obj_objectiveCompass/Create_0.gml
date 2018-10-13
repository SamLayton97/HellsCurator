/// @description Used for initialization

// if compass feature is disabled, destroy self on start
if (global.ObjectiveCompassDisabled)
	instance_destroy(id);
	
// save screen dimensions and calculate GUI draw coordinates
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
drawX = screenWidth - 168;
drawY = screenHeight - 168;

// initialize objective to direct player towards
// if gate puzzle exists, set objective to first sign
if (instance_exists(obj_greenLever))
	objective = obj_greenLever;
// otherwise, set objective to book of the dead
else
	objective = obj_bookOfTheDead;
	
// initialize angle to draw compass point
drawAngle = 0;