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
	
	// if directional aid enabled
	if (global.DirectionalSoundAidEnabled)
	{
		//tell PC to draw directional investigate indicator
		obj_player.attackIndicatorAngle = point_direction(obj_player.x, obj_player.y, x, y)
			* (pi / 180);
		obj_player.attackIndicatorCounter = 0;
	}
}