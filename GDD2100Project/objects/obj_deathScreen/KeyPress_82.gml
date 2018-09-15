/// @description Called when user presses "R" key

// resets level
room_goto(SetupRoom);

// play "select" sound effect
audio_play_sound(sfx_buttonPress, 10, false);