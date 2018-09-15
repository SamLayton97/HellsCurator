/// @description Called once per frame

// if player is within interact range and hits "interact" key
if (point_distance(x, y, obj_player.x, obj_player.y) <= interactRange && obj_player.isInteracting)
{
	// TODO: reveal secret walls near self
	
	
	// provide "secret found" audio-visual feedback
	instance_create_layer(x, y, "Visual_Effects_Layer", obj_secretFoundText);
	audio_play_sound(sfx_secretFound, 12, false);
	
	// increment number of secrets found
	obj_gameManager.secretsFound++;
	
	// destroy self
	instance_destroy(id);
}