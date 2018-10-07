/// @description Called while space bar is down

// if player is in one-handed mode or blind mode and has rocks to throw
if ((global.OneHandedModeEnabled || global.BlindModeEnabled) && rockCount > 0)
{	
	// calculate position rock will be thrown to
	throwX = cos(image_angle * pi / 180) * oneHandedThrowRange;
	throwY = sin(image_angle * pi / 180) * oneHandedThrowRange;
	
	// throw rock at towards mouse position and decrement rock count
	instance_create_layer(x, y, "Projectiles_Layer", obj_rockProjectile);
	//rockCount--;
	
	// increment number of rocks used
	obj_gameManager.rocksUsed++;
	
	// play rock throw sound in direction of throw
	// cardinal directions
	if (throwX == 0 && throwY < 0)			// N
		audio_play_sound_at(sfx_rockThrow, x, y - 5, 0, 5, 5, 1, false, 10);
	else if (throwX == 0 && throwY > 0)		// S
		audio_play_sound_at(sfx_rockThrow, x, y + 5, 0, 5, 5, 1, false, 10);
	else if (throwX > 0 && throwY == 0)		// E
		audio_play_sound_at(sfx_rockThrow, x + 5, y, 0, 5, 5, 1, false, 10);
	else if (throwX < 0 && throwY == 0)		// W
		audio_play_sound_at(sfx_rockThrow, x - 5, y, 0, 5, 5, 1, false, 10);
	// diagonal directions
	else if (throwX > 0 && throwY < 0)		// NE
		audio_play_sound_at(sfx_rockThrow, x + 5, y - 5, 0, 5, 5, 1, false, 10);
	else if (throwX > 0 && throwY > 0)		// SE
		audio_play_sound_at(sfx_rockThrow, x + 5, y + 5, 0, 5, 5, 1, false, 10);
	else if (throwX < 0 && throwY < 0)		// SW
		audio_play_sound_at(sfx_rockThrow, x - 5, y + 5, 0, 5, 5, 1, false, 10);
	else									// NW
		audio_play_sound_at(sfx_rockThrow, x - 5, y - 5, 0, 5, 5, 1, false, 10);
	
	// set closed captioning
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Whoosh]";
	}
}