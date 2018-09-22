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
		sprite_index = spr_greenLeverActive;
	}
}

// if inactive and hasn't switched sprite to reflect that, switch sprite
if (!active && sprite_index != spr_greenLeverInactive)
	sprite_index = spr_greenLeverInactive;