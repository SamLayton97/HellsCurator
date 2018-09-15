/// @description When player presses ESC key

// return to main menu
room_goto(TitleScreenRoom);

// play "select" sound effect
audio_play_sound(sfx_buttonPress, 10, false);