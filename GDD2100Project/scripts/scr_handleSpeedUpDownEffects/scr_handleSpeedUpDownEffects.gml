// handles step event relating to player's speed up / speed down effects

// if sped up, handle speed change and timer
if (spedUp)
{
	// increase speed
	playerSpeed = increasedPlayerSpeed;
	
	// if speed counter exceeds max frames
	if (speedChangeCounter >= totalSpeedChangeFrames)
	{
		// reset speed and counter
		playerSpeed = regularPlayerSpeed;
		spedUp = false;
		speedChangeCounter = 0;
		
		// play slow down sound effect
		audio_play_sound(sfx_speedDown, 8, false);
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Pace slows]";
		}
	}
	// otherwise, increment counter
	else
		speedChangeCounter++;
}
// if sped down, handle speed change and timer
else if (spedDown)
{
	// increase speed
	playerSpeed = decreasedPlayerSpeed;
	
	// if speed counter exceeds max frames
	if (speedChangeCounter >= totalSpeedChangeFrames)
	{
		// reset speed and counter
		playerSpeed = regularPlayerSpeed;
		spedDown = false;
		speedChangeCounter = 0;
		
		// play speed up sound effect
		audio_play_sound(sfx_speedUp, 8, false);
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Pace quickens]";
		}
	}
	// otherwise, increment counter
	else
		speedChangeCounter++;
}