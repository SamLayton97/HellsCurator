/// @description Called when player clicks on button

event_inherited();

// set difficulty to "Medium" and progress to setup
global.GameDifficulty = Difficulty.medium;
room_goto(SetupRoom);