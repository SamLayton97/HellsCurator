/// @description Called once per frame
	
// if player exists (has not yet completed the level / died)
if (instance_exists(obj_player))
{
	// swap sprite based on own activity
	if (obj_player.holdingBook && sprite_index != activeSprite)
		sprite_index = activeSprite;
	else if (!obj_player.holdingBook && sprite_index != inactiveSprite)
		sprite_index = inactiveSprite;
	
	// if player has book and is within interact range
	if (obj_player.holdingBook && 
	point_distance(x, y, obj_player.x, obj_player.y) < interactRange)
	{
		// "complete level", i.e., spawn transition effect
		instance_create_layer(obj_player.x, obj_player.y, "Visual_Effects_Layer", obj_successTransition);
		audio_play_sound(sfx_buttonPress, 15, false);
		
		// spawn "claw" visual effect and destroy self
		instance_create_layer(x, y, "Visual_Effects_Layer", obj_clawMark);
		instance_destroy(id);
	}
}
