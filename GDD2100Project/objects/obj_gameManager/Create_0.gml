/// @description Used for initialization

// start full screen
isFullScreen = true;
window_set_fullscreen(isFullScreen);

// initialize game timer variables
currTimeFrames = global.MaxScorableSeconds * room_speed;

// initialize various end-score modifiers
secretsFound = 0;
rocksUsed = 0;
perfectStealth = true;

// initialize spectre patrols variables
patrolCounter = 0;

// based on game mode, spawn helper / hurter managers or nothing
if (global.GameMode == gameMode.helper)
	instance_create_layer(0, 0, "Agents_Layer", obj_helperManager);
else if (global.GameMode == gameMode.hurter)
	instance_create_layer(0, 0, "Agents_Layer", obj_hurterManager);