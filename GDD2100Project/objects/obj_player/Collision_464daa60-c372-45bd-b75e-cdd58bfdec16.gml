/// @description When player collides with holy bell

// set holding bell to true and swap sprite accordingly
holdingBell = true;
sprite_index = myHoldSkin;

// play pick-up sound effect
audio_play_sound(sfx_pickupBell, 8, false);

// set closed captioning
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Bell grabbed]";
}