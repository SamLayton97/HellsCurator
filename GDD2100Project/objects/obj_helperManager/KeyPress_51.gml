/// @description When player 2 activates third ability

// if ability 3 is ready
if (ability3Ready)
{
	// set ability to false
	ability3Ready = false;
	
	// chime a holy bell at the player's position
	instance_create_layer(obj_player.x, obj_player.y, "Visual_Effects_Layer", obj_holyBellRadius);
	
	// play holy bell sound effect
	audio_play_sound(sfx_bellChime, 12, false);
	
	// set closed captions
	if (global.ClosedCaptioningEnabled)
	{
		obj_closedCaptioningManager.currFrameCounter = 0;
		obj_closedCaptioningManager.captionText = "[Bell rings]";
	}
}