/// @description Called when player collides with threshold checkpoint

// if checkpoints are not disabled
if (!global.DisableCheckpoints)
{
	// set save state location to checkpoint's location
	global.SaveStateX = x;
	global.SaveStateY = y;
	
	// update saved player items
	global.SavedRockCount = other.rockCount;
	global.SavedHoldingBell = other.holdingBell;
	global.SavedHoldingBook = other.holdingBook;
	
	// update player's tutorial and puzzle progress
	global.SavedTutorialCompleted = obj_gameManager.tutorialFinished;
	global.SavedGreenSignActive = obj_greenLever.active;
	global.SavedPurpleSignActive = obj_purpleLever.active;
	global.SavedOrangeSignActive = obj_orangeLever.active;
	
	// update player's time remaining and score modifiers
	global.SavedTimeRemaining = obj_gameManager.currTimeFrames;
	global.SavedRocksUsed = obj_gameManager.rocksUsed;
	global.SavedPerfectStealth = obj_gameManager.perfectStealth;
	
	// write "checkpoint reached" text to GUI
	obj_environmentalFeedbackTextManager.currFrameCounter = 0;
	obj_environmentalFeedbackTextManager.text = "Checkpoint Reached!";
	
	// play "checkpoint reached" sound
	audio_play_sound(sfx_passingCheckpointThreshold, 7, false);
}

// destroy self
instance_destroy(id);