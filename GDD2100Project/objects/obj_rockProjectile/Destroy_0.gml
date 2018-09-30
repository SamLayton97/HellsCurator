/// @description Called when object is destroyed

// play rock hit sound effect
audio_play_sound(sfx_rockHit, 9, false);

// set closed captions
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Crack]"
}

// create sound radius at rock's position
instance_create_layer(x, y, "Visual_Effects_Layer", obj_soundRadius);