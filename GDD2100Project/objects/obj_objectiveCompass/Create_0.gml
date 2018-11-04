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
if (instance_exists(obj_greenLever) && !obj_greenLever.active)
	objective = obj_greenLever;
else if (instance_exists(obj_purpleLever) && (obj_greenLever.active && !obj_purpleLever.active))
	objective = obj_purpleLever;
else if (instance_exists(obj_orangeLever) && (obj_purpleLever.active && !obj_orangeLever.active))
	objective = obj_orangeLever;
// otherwise, set objective to book of the dead
else
	objective = obj_levelExitThreshold;

// initialize angle to draw compass point
drawAngle = 0;