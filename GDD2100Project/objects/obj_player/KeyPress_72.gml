/// @description Rings bell for right-handed mode

// if one handed mode is enabled and player is holding bell
if (global.OneHandedModeEnabled && holdingBell)
{
	// instantiate holy bell radius
	instance_create_layer(x, y, "Visual_Effects_Layer", obj_holyBellRadius);
	
	// play holy bell sound effect
	audio_play_sound(sfx_bellChime, 12, false);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Bell rings]";
	}
	
	// set holding bell to false and update sprite accordingly
	holdingBell = false;
	sprite_index = mySkin;
}