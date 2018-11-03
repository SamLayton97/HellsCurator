/// @description Called when player collides with threshold checkpoint

// if checkpoints are not disabled
if (!global.DisableCheckpoints)
{
	// set save state location to checkpoint's location
	global.SaveStateX = x;
	global.SaveStateY = y;
	
	// TODO: update saved rock count and which signs are active
	
	// TODO: play "checkpoint reached" sound
	
	// TODO: write "checkpoint reached" text to GUI
	
}