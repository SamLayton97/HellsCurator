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
	audio_play_sound(sfx_spectreAttack, 20, false);
}