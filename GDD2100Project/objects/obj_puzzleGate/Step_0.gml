/// @description Called once per frame

// if purple lever is active but green is not
if (obj_purpleLever.active && !obj_greenLever.active)
{
	// deactivate purple lever
	obj_purpleLever.active = false;
	
	// TODO: play "Deactivation" sound
}

// of orange lever is active but green and purple are not
if (obj_orangeLever.active && !(obj_greenLever.active && obj_purpleLever.active))
{
	// deactivate all levers
	obj_greenLever.active = false;
	obj_purpleLever.active = false;
	obj_orangeLever.active = false;
	
	// TODO: play "Deactivation" sound
}

// set gate sprite / destroy gate according to which levers are active
// if all levers are active, destroy self
if (obj_orangeLever.active && obj_purpleLever.active && obj_greenLever.active)
	instance_destroy(id);
// if levers green and purple are active, set sprite to reflect that
else if (obj_greenLever.active && obj_purpleLever.active)
	sprite_index = spr_gateGP;
// if only green lever is active, set sprite to reflect that
else if (obj_greenLever.active)
	sprite_index = spr_gateG;
// otherwise (all levers inactive), set sprite to reflect that
else
	sprite_index = spr_gate;
