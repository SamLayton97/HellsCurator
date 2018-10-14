// handles step event of crow in "Observe" state

// handle line of sight between player and crow's vision cone
with (myVisionCone)
{
	// if player leaves cone's collision or breaks line of sight
	if (!place_meeting(x, y, obj_player) ||
	collision_line(other.x, other.y, obj_player.x, obj_player.y, base_solidObject, 1, 0))
	{
		// set crow's state to "Gaze"
		other.currState = crowState.gaze;
		
		// swap crow and vision cone sprites to match crow's state
		other.sprite_index = spr_tutorialCrow;
		sprite_index = spr_crowVConeGaze;
		
		// direct vision cone to last angle crow was looking at
		image_angle = other.image_angle + currRotation;
		
		// play "Crow Chortle" sound effect
		audio_play_sound_on(other.myEmitter, sfx_crowChortle, false, 7);
		
		// set closed captioning
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Crow chortles]";
		}
	}
}