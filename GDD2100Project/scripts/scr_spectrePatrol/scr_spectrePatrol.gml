// step script used by spectre in patrolling state

// if spectre's vision cone collides with player
// AND spectre has line of sight
with (myVisionCone)
{
	if (place_meeting(x, y, obj_player)
	&& !collision_line(other.x, other.y, obj_player.x, obj_player.y, base_solidObject, 1, 0))
	{
		// save current position on path
		other.exitPointX = other.x;
		other.exitPointY = other.y;
		other.exitPosition = other.path_position;

		// set search point to player's current position
		other.searchPointX = obj_player.x;
		other.searchPointY = obj_player.y;
		
		// end spectre's path and set state to "Investigate"
		with (other) path_end();
		other.currState = spectreState.investigate;
		
		// set sprites to reflect state change
		other.sprite_index = spr_spectreInvestigate;
		sprite_index = spr_spectreVConeInvestigate;
		
		// play investigate sound effect
		audio_play_sound(sfx_spectreInvestigate, 15, false);
	}
}