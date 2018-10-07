// handles line-of-sight tolerance step operation of spectre

// if spectre's vision cone collides with player 
// AND spectre has line of sight with player
with (myVisionCone)
{
	if (place_meeting(x, y, obj_player)
	&& !collision_line(other.x, other.y, obj_player.x, obj_player.y, base_solidObject, 1, 0))
	{
		// increase current sight value and v-cone animation speed
		other.currSightVal++;
		image_speed = 0.4;
	}
	// if spectre doesn't see player and current sight value is above 0
	else if (other.currSightVal > 0)
	{
		// decrement sight val
		other.currSightVal--;
		image_speed = -0.4;
	}
	// otherwise
	else
	{
		// freeze vision cone at first frame
		image_speed = 0;
	}
}
	
// modifies sprectre's investigate sprite according to current sight value
if (currSightVal >= .75 * maxSightVal && sprite_index != spr_spectreInvestigate75Tol)
	sprite_index = spr_spectreInvestigate75Tol;
else if (currSightVal >= .5 * maxSightVal && currSightVal < .75 * maxSightVal 
&& sprite_index != spr_spectreInvestigate50Tol)
	sprite_index = spr_spectreInvestigate50Tol;
else if (currSightVal >= .25 * maxSightVal && currSightVal < .5 * maxSightVal 
&& sprite_index != spr_spectreInvestigate25Tol)
	sprite_index = spr_spectreInvestigate25Tol;
else if (currSightVal < .25 * maxSightVal && sprite_index != spr_spectreInvestigate)
	sprite_index = spr_spectreInvestigate;
	
// if current sight val exceeds max tolerance
if (currSightVal >= maxSightVal)
{
	// end path and set spectre state to attack
	path_end();
	currState = spectreState.attack;
		
	// swap sprites to reflect state change
	sprite_index = spr_spectreAttack;
	myVisionCone.sprite_index = spr_spectreVConeAttack;
		
	// play attack sound
	audio_play_sound_at(sfx_spectreAttack, x, y, 0, 0, 0, 0, false, 20);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Hissing]";
	}
	
	// if directional indicators are active
	if (global.DirectionalSoundAidEnabled)
	{
		//tell PC to draw directional investigate indicator
		obj_player.attackIndicatorAngle = point_direction(obj_player.x, obj_player.y, x, y)
			* (pi / 180);
		obj_player.attackIndicatorCounter = 0;
	}
}