/// @description Used for initialization

// set transition's duration
frameCounter = 0;
totalFrames = durationSeconds * room_speed;

// plays "success" sound effect
audio_play_sound(sfx_buttonPress, 20, false);

// set closed captions
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Presence lifted]";
}