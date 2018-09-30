/// @description When player collides with rock pickup

// increment rock count
rockCount++;

// play pick-up sound effect
audio_play_sound(sfx_pickup, 8, false);

// set closed captioning
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Rock grabbed]";
}