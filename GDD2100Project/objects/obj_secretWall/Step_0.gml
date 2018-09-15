/// @description Called once per frame

// if player is within interact range and hits "interact" key
if (point_distance(x, y, obj_player.x, obj_player.y) <= interactRange && obj_player.isInteracting)
{
	// TODO: reveal secret walls near self
	
	// TODO: provide "secret found" audio-visual feedback
	
	// increment number of secrets found
	obj_gameManager.secretsFound++;
	
	// destroy self
	instance_destroy(id);
}