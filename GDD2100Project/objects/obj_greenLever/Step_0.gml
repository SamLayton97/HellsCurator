/// @description Called once per frame

// if player exists and lever isn't already active
if (instance_exists(obj_player) && !active)
{
	// if player is over lever and hits "Interact" key
	if (place_meeting(x, y, obj_player) && obj_player.isInteracting)
	{
		// activate lever
		active = true;
		
		// set sprite and play appropriate sound effect
		sprite_index = spr_greenLeverActive;
		if (!audio_is_playing(sfx_greenActive))
			audio_play_sound(sfx_greenActive, 10, false);
			
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Sign lit]";
		}
	}
}

// if inactive and hasn't switched sprite to reflect that, switch sprite
if (!active && sprite_index != spr_greenLeverInactive)
	sprite_index = spr_greenLeverInactive;