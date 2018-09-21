/// @description When rock collides with spectre game object

// destroy rock projectile
instance_destroy(other);

// if not already in attack state, tell spectre to immediately enter said state
if (currState != spectreState.attack)
{
	// end path and set spectre state to attack
	path_end();
	currState = spectreState.attack;
		
	// swap sprites to reflect state change
	sprite_index = spr_spectreAttack;
	myVisionCone.sprite_index = spr_spectreVConeAttack;
		
	// play attack sound
	audio_play_sound(sfx_spectreAttack, 20, false);
}