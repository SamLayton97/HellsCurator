/// @description Used for initialization

// start full screen
isFullScreen = true;
window_set_fullscreen(isFullScreen);

// initialize game timer variables
currTimeSeconds = global.MaxScorableSeconds;

// initialize various end-score modifiers
secretsFound = 0;
rocksUsed = 0;
perfectStealth = true;