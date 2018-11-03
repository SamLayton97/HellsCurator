/// @description Called once per frame

// if player object even exists
if (instance_exists(obj_player))
{
	// if player is within interact range and hits "interact" key
	if (point_distance(x, y, obj_player.x, obj_player.y) <= interactRange && obj_player.isInteracting)
	{
		// reveal secret walls near self
		// if reveal list isn't empty
		if (!ds_list_empty(toReveal))
		{
			// for each item in reveal list
			for (var i = 0; i < ds_list_size(toReveal); i++)
			{
				with (ds_list_find_value(toReveal, i))
				{
					if (!visible) visible = true;
				}
			}
		}
	
		// provide "secret found" audio-visual feedback
		obj_environmentalFeedbackTextManager.currFrameCounter = 0;
		obj_environmentalFeedbackTextManager.text = "Secret Found!";
		audio_play_sound(sfx_secretFound, 12, false);
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Secret door opens]";
		}
		
		// increment number of secrets found
		obj_gameManager.secretsFound++;
	
		// destroy self
		instance_destroy(id);
	}
}