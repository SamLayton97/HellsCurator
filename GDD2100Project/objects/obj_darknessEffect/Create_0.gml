/// @description Used for initialization

// set animation speed of darkness (quickens when time remaining decreases)
image_speed = 1 / (obj_gameManager.currTimeFrames / room_speed);

// start heart beat sound at 30% volume and fade up to full over 60 seconds
var heartBeatSound = audio_play_sound(sfx_heartBeat, 10, true);
audio_sound_gain(sfx_heartBeat, .3, 0);
audio_sound_gain(sfx_heartBeat, 1, 60000);

// set closed captions
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Heart beat quickens]";
}