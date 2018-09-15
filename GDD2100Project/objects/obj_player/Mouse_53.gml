/// @description Called when user presses left mouse button

// if player has rocks to throw
if (rockCount > 0)
{
	// throw rock at towards mouse position and decrement rock count
	instance_create_layer(x, y, "Projectiles_Layer", obj_rockProjectile);
	rockCount--;
	
	// increment number of rocks used
	obj_gameManager.rocksUsed++;
	
	// play rock throw sound
	audio_play_sound(sfx_rockThrow, 8, false);
}