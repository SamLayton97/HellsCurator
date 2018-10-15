/// @description Called once per frame

// if player has no rocks and pool is not already active
if (instance_exists(obj_player) && obj_player.rockCount < 1 && !active)
	// set self to be active
	active = true;