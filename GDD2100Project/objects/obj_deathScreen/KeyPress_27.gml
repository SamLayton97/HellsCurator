/// @description When player presses ESC key

// reset save state location
global.SaveStateX = 0;
global.SaveStateY = 0;

// return to main menu
room_goto(TitleScreenRoom);

// play "select" sound effect
audio_play_sound(sfx_buttonPress, 10, false);