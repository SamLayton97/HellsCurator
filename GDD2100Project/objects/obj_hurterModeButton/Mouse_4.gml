/// @description Called when player clicks on button

event_inherited();

// go to setup room and set game mode to "hurter mode"
room_goto(SetupRoom);
global.GameMode = gameMode.hurter;