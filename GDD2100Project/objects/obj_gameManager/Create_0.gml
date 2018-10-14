/// @description Used for initialization

// start full screen
isFullScreen = true;
window_set_fullscreen(isFullScreen);

// initialize game timer variables
currTimeFrames = global.MaxScorableSeconds * room_speed;

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
rocksUsed = 0;
perfectStealth = true;

// based on game mode, spawn helper / hurter managers or nothing
if (global.GameMode == gameMode.helper)
	instance_create_layer(0, 0, "Agents_Layer", obj_helperManager);
else if (global.GameMode == gameMode.hurter)
	instance_create_layer(0, 0, "Agents_Layer", obj_hurterManager);
	
// read in game difficulty for various game objects to use
difficulty = global.GameDifficulty;
