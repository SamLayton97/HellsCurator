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
		sprite_index = spr_purpleLeverActive;
		if (!audio_is_playing(sfx_purpleActive))
			audio_play_sound(sfx_purpleActive, 10, false);
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Magical flash]";
		}
	}
}

// if inactive and hasn't switched sprite to reflect that, switch sprite
if (!active && sprite_index != spr_purpleLeverInactive)
	sprite_index = spr_purpleLeverInactive;

// if sign is inactive and not already playing its looped sound
if (!active && !audio_is_playing(myLoopSound))
	// play sound from emitter
	audio_play_sound_on(myEmitter, myLoopSound, true, 5);

// if sign is active and still playing looped sound
if (active && audio_is_playing(myLoopSound))
	// stop playing sound
	audio_stop_sound(myLoopSound);