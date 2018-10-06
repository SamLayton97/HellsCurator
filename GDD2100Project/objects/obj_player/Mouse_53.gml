/// @description Called when user presses left mouse button

// if player has rocks to throw
if (!(global.OneHandedModeEnabled || global.BlindModeEnabled) 
&& rockCount > 0)
{
	// throw rock at towards mouse position and decrement rock count
	instance_create_layer(x, y, "Projectiles_Layer", obj_rockProjectile);
	rockCount--;
	
	// increment number of rocks used
	obj_gameManager.rocksUsed++;
	
	// play rock throw sound
	audio_play_sound(sfx_rockThrow, 8, false);
	
	// set closed captioning
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Grunt]";
	}
}