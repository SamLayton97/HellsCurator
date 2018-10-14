/// @description When object collides with player

// if pickup pool is active
if (active)
{
	// if player has completed tutorial, behave like regular rock pickup
	if (obj_gameManager.tutorialFinished)
	{
		// increment player's rock count
		obj_player.rockCount++;
	
		instance_destroy(id);
	}
	// otherwise,
	else
	{
		// increment rock count
		obj_player.rockCount++;
		
		// temporarily set to be inactive
		active = false;
	}

	// play pick-up sound effect
	audio_play_sound(sfx_pickup, 8, false);

	// set closed captioning
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Rock grabbed]";
	}
}

