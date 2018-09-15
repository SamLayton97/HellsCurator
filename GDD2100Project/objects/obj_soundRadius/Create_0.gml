/// @description Used for initialization

// declare draw radius variables
drawRadius = 0;
growingRadius = true;
growthPerFrame = (radius * 2) / room_speed;

// if spectre exists in game
if (instance_number(obj_spectre) > 0)
{
	// if spectre is currently patrolling and within sound radius
	if (obj_spectre.currState == spectreState.patrol
	&& point_distance(x, y, obj_spectre.x, obj_spectre.y) <= radius)
	{
		// set spectre to investigate sound
		with (obj_spectre)
		{
			// save current position on path
			exitPointX = x;
			exitPointY = y;
			exitPosition = path_position;
		
			// set search point to sound's origin
			searchPointX = other.x;
			searchPointY = other.y;
		
			// end spectre's path and set state to "Investigate"
			path_end();
			currState = spectreState.investigate;
		
			// set sprite to reflect state change
			sprite_index = spr_spectreInvestigate;
			myVisionCone.sprite_index = spr_spectreVConeInvestigate;
			
			// play investigate sound effect
			audio_play_sound(sfx_spectreInvestigate, 15, false);
		}
	}
}
