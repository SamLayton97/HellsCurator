/// @description When player collides with this lever

// if not already active, set as active
if (!active)
{
	active = true;
	
	// TODO: switch sprite and play sound effect
	sprite_index = spr_orangeLeverActive;
}