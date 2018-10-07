/// @description Called once per frame

// if purple lever is active but green is not
if (obj_purpleLever.active && !obj_greenLever.active)
{
	// deactivate purple lever
	obj_purpleLever.active = false;
	
	// play "Deactivation" sound
	audio_play_sound(sfx_incorrectCode, 10, false);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Signs deactivate]";
	}
}

// of orange lever is active but green and purple are not
if (obj_orangeLever.active && !(obj_greenLever.active && obj_purpleLever.active))
{
	// deactivate all levers
	obj_greenLever.active = false;
	obj_purpleLever.active = false;
	obj_orangeLever.active = false;
	
	// play "Deactivation" sound
	audio_play_sound(sfx_incorrectCode, 10, false);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Signs deactivate]";
	}
}

// set gate sprite / destroy gate according to which levers are active
// if all levers are active
if (obj_orangeLever.active && obj_purpleLever.active && obj_greenLever.active)
{
	// play "Open" sound effect and destroy self
	audio_play_sound_on(myEmitter, sfx_gateOpening, false, 15);
	instance_destroy(id);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Gate opens]";
	}
}
// if levers green and purple are active, set sprite to reflect that
else if (obj_greenLever.active && obj_purpleLever.active)
	sprite_index = spr_gateGP;
// if only green lever is active, set sprite to reflect that
else if (obj_greenLever.active)
	sprite_index = spr_gateG;
// otherwise (all levers inactive), set sprite to reflect that
else
	sprite_index = spr_gate;
