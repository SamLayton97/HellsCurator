// handles spectre's "instant agro range" step operations

// if spectre isn't in attack state and player falls within immediate agro range
if (currState != spectreState.attack && instance_number(obj_player) > 0
&& point_distance(x, y, obj_player.x, obj_player.y) <= immediateAgroRange)
{
	// end path and set spectre state to attack
	path_end();
	currState = spectreState.attack;
		
	// swap sprites to reflect state change
	sprite_index = spr_spectreAttack;
	myVisionCone.sprite_index = spr_spectreVConeAttack;
	
	// play attack sound
	audio_play_sound(sfx_spectreAttack, 20, false);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Hissing]";
	}
}