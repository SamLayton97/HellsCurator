/// @description Called when user presses "R" key

// reset save state location
global.SaveStateX = 0;
global.SaveStateY = 0;

// resets level
room_goto(SetupRoom);

// play "select" sound effect
audio_play_sound(sfx_buttonPress, 10, false);