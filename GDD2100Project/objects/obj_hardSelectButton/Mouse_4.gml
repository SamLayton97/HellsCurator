/// @description Called when player clicks on button

event_inherited();

// set difficulty to "Hard" and progress to setup
global.GameDifficulty = Difficulty.hard;
room_goto(SetupRoom);