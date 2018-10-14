/// @description Called once per frame

// if player object even exists
if (instance_exists(obj_player))
{
	// if player is within interact range and hits "interact" key
	if (point_distance(x, y, obj_player.x, obj_player.y) <= interactRange && obj_player.isInteracting)
	{
		// play door opening noise
		audio_play_sound(sfx_doorOpens, 10, false);
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Door opens]";
		}
		
		// increment number of secrets found
		obj_gameManager.secretsFound++;
	
		// destroy self
		instance_destroy(id);
	}
}