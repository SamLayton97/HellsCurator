/// @description Called once per frame

// if player exists
if (instance_exists(obj_player))
{
	// if player is over lever and hits "Interact" key
	if (place_meeting(x, y, obj_player) && obj_player.isInteracting)
	{
		// activate lever
		active = true;
		
		// TODO: set sprite and play appropriate sound effect
		sprite_index = spr_orangeLeverActive;
	}
}

// if set to inactive and hasn't switched sprite to reflect that, reflect change
if (!active && sprite_index != spr_orangeLeverInactive)
	sprite_index = spr_orangeLeverInactive;