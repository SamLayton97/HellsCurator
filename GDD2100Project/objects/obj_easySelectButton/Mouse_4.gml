/// @description Called when player clicks on button

event_inherited();

// set difficulty to "Easy" and progress to setup
global.GameDifficulty = Difficulty.easy;
room_goto(SetupRoom);