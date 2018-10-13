/// @description Used for initialization

// if compass feature is disabled, destroy self on start
if (global.ObjectiveCompassDisabled)
	instance_destroy(id);
	
// save screen dimensions and calculate GUI draw coordinates
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
drawX = screenWidth - 168;
drawY = screenHeight - 168;