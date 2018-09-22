/// @description Used for initialization

// set animation speed of darkness
image_speed = 1 / (room_speed);

// start heart beat sound at 30% volume and fade up to full over 60 seconds
var heartBeatSound = audio_play_sound(sfx_heartBeat, 10, true);
audio_sound_gain(sfx_heartBeat, .3, 0);
audio_sound_gain(sfx_heartBeat, 1, 60000);
