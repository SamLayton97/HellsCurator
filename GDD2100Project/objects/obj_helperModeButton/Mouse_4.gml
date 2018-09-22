/// @description Called when player clicks on button

event_inherited();

// go to setup room and set game mode to "helper mode"
room_goto(SetupRoom);
global.GameMode = gameMode.helper;

// set difficulty to default (medium)
global.GameDifficulty = Difficulty.medium;