/// @description When player 2 activates second ability

// if ability is ready
if (ability2Ready)
{
	// set ability to unready
	ability2Ready = false;
	
	// slightly decrease player speed for period of time
	obj_player.spedDown = true;
	
	// play speed down sound effect
	audio_play_sound(sfx_speedDown, 8, false);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Pace slows]";
	}
}