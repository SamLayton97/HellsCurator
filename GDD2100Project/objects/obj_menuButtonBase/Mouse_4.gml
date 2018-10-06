/// @description When player clicks on button

// play button press sfx
audio_play_sound(sfx_buttonPress, 10, false);

// stop voice over sound if playing
if (audio_is_playing(mySound))
	audio_stop_sound(mySound);