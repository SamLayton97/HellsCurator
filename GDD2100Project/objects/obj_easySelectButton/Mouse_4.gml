/// @description Called when player clicks on button

event_inherited();

// set difficulty to "Easy" and progress to setup
global.GameDifficulty = Difficulty.easy;
global.GameMode = gameMode.solo;
room_goto(SetupRoom);