/// @description When player's mouse leaves button

// set moused-over state to be false
isMousedOver = false;

// if in blind mode and voice over is playing, stop sound
if (global.BlindModeEnabled && audio_is_playing(mySound))
	audio_stop_sound(mySound);