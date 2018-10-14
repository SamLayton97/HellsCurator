// handles step event of crow in "Gaze" state

// handle operations of crow's vision cone
with(myVisionCone)
{
	// scan with vision cone
	// increment / decrement look offset
	if (lookingRight)
		currRotation -= lookSpeed;
	else
		currRotation += lookSpeed;

	// if rotation offset exceeds max angle, reverse look direction
	if (currRotation >= maxRotationAngle || currRotation <= -maxRotationAngle)
		lookingRight = !lookingRight;
		
	// angle vision cone to match crow's angle plus look offset
	image_angle = other.image_angle + currRotation;
	
	// if crow's vision cone collides with player AND crow has line of sight
	if (place_meeting(x, y, obj_player)
	&& !collision_line(other.x, other.y, obj_player.x, obj_player.y, base_solidObject, 1, 0))
	{
		// set crow's state to observe
		other.currState = crowState.observe;
		
		// swap sprites of both crow and vision cone
		other.sprite_index = spr_tutorialCrowObserve;
		sprite_index = spr_crowVConeObserve;
		
		// save angle crow was looking at at time of state change
		breakStateAngle = currRotation;
		
		// direct vision cone at player
		image_angle = point_direction(other.x, other.y, obj_player.x, obj_player.y);
		
		// play crow "Caw" sound effect
		audio_play_sound_on(other.myEmitter, sfx_crowCaw, false, 10);
		
		// set closed captioning
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Crow caws]";
		}
		
		// if directional indicators are enabled
		if (global.DirectionalSoundAidEnabled)
		{
			// tell PC to draw directional investigate indicator
			obj_player.investigateIndicatorAngle = point_direction(obj_player.x, obj_player.y, other.x, other.y)
				* (pi / 180);
			obj_player.investigateIndicatorCounter = 0;
		}
	}
}