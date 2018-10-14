/// @description When rock collides with this door

// play door opening noise
audio_play_sound(sfx_doorOpens, 10, false);
		
// set closed captions
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Door opens]";
}
	
// destroy self
instance_destroy(id);