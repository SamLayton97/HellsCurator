/// @description Called when player collides with threshold checkpoint

// if checkpoints are not disabled
if (!global.DisableCheckpoints)
{
	// set save state location to checkpoint's location
	global.SaveStateX = x;
	global.SaveStateY = y;
	
	// TODO: update saved player items
	global.SavedRockCount = other.rockCount;
	global.SavedHoldingBell = other.holdingBell;
	
	// TODO: update player's tutorial and puzzle progress
	global.SavedTutorialCompleted = obj_gameManager.tutorialFinished;
	global.SavedGreenSignActive = obj_greenLever.active;
	global.SavedPurpleSignActive = obj_purpleLever.active;
	global.SavedOrangeSignActive = obj_orangeLever.active;
	
	// TODO: write "checkpoint reached" text to GUI
	
	// TODO: play "checkpoint reached" sound
	
}

// destroy self
instance_destroy(id);