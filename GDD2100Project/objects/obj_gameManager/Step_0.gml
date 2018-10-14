/// @description Called once per frame

// if player has finished tutorial
if (tutorialFinished)
{
	// if player is alive and timer hasn't hit 0, decrement time
	if (instance_exists(obj_player) && currTimeFrames > 0)
		currTimeFrames--;
	// otherwise, send all spectres after player
	else
	{
		with (obj_spectre)
		{
			// if spectre isn't already in attack state and player still lives
			if (currState != spectreState.attack && instance_exists(obj_player))
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
		}
	}

	// if timer reaches 60 seconds, create single instance of darkness effect
	if (!instance_exists(obj_darknessEffect) && currTimeFrames <= 60 * room_speed)
		instance_create_layer(obj_player.x, obj_player.y, "Visual_Effects_Layer", obj_darknessEffect);
}

