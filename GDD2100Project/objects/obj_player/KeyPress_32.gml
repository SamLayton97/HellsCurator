/// @description Called while space bar is down

// if player is in one-handed mode and has rocks to throw
if (global.OneHandedModeEnabled && rockCount > 0)
{	
	// calculate position rock will be thrown to
	throwX = cos(image_angle * pi / 180) * oneHandedThrowRange;
	throwY = sin(image_angle * pi / 180) * oneHandedThrowRange;
	
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
		obj_closedCaptioningManager.captionText = "[Whoosh]";
	}
}