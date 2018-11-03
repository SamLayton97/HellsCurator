/// @description Used for initialization

// start full screen
isFullScreen = true;
window_set_fullscreen(isFullScreen);

// if saved remaining time is set to its default
if (global.SavedTimeRemaining == 0)
{
	// initialize game timer variable to max time allotted by difficulty
	currTimeFrames = global.MaxScorableSeconds * room_speed;
}
// otherwise (i.e., player reloaded from checkpoint)
else
{
	// initialize game timer variable to time remaining from checkpoint
	currTimeFrames = global.SavedTimeRemaining;
}

// extend time if low reactivity mode enabled
if (global.LowReactivityEnabled)
	currTimeFrames *= 1.3;

// extend time if blind mode enabled
if (global.BlindModeEnabled)
{
	currTimeFrames *= 2.7;
}

// initialize various end-score modifiers
secretsFound = 0;
rocksUsed = global.SavedRocksUsed;
perfectStealth = global.SavedPerfectStealth;

// based on game mode, spawn helper / hurter managers or nothing
if (global.GameMode == gameMode.helper)
	instance_create_layer(0, 0, "Agents_Layer", obj_helperManager);
else if (global.GameMode == gameMode.hurter)
	instance_create_layer(0, 0, "Agents_Layer", obj_hurterManager);
	
// read in game difficulty for various game objects to use
difficulty = global.GameDifficulty;

// initialize whether player has finished tutorial (controls timer)
tutorialFinished = global.SavedTutorialCompleted;