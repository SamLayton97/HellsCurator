/// @description Used for initialization

// if in blind mode, scale radius down to 1/4
if (global.BlindModeEnabled)
	radius *= .25;

// declare draw radius variables
drawRadius = 0;
growingRadius = true;
growthPerFrame = (radius * 2) / room_speed;

// create list of spectres to alert
toAlert = ds_list_create();

// with all spectres in game
with (obj_spectre)
{
	// if they are within sound's radius, add them to list
	if (distance_to_point(other.x, other.y) <= other.radius)
		ds_list_add(other.toAlert, id);
}

// if "to alert" isn't empty
if (!ds_list_empty(toAlert))
{
	// for each spectre in list
	for (var i = 0; i < ds_list_size(toAlert); i++)
	{
		currSpectre = ds_list_find_value(toAlert, i);
		
		// if spectre is patrolling
		if (currSpectre.currState == spectreState.patrol)
		{
			// set spectre to investigate sound
			with (currSpectre)
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
				
				// if directional sound enabled
				if (global.DirectionalSoundAidEnabled)
				{
					//tell PC to draw directional investigate indicator
					obj_player.investigateIndicatorAngle = point_direction(obj_player.x, obj_player.y, x, y)
						* (pi / 180);
					obj_player.investigateIndicatorCounter = 0;
				}
			}
		}
	}
}
