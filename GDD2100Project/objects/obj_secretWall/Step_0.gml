/// @description Called once per frame

// if player object even exists
if (instance_exists(obj_player))
{
		// if player is within interact range and hits "interact" key
	if (point_distance(x, y, obj_player.x, obj_player.y) <= interactRange && obj_player.isInteracting)
	{
		// TODO: reveal secret walls near self
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
		instance_create_layer(x, y, "Visual_Effects_Layer", obj_secretFoundText);
		audio_play_sound(sfx_secretFound, 12, false);
	
		// increment number of secrets found
		obj_gameManager.secretsFound++;
	
		// destroy self
		instance_destroy(id);
	}
}