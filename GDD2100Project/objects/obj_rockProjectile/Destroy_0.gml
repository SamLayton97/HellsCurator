/// @description Called when object is destroyed

// play 3D-space rock hit sound effect
audio_play_sound_at(sfx_rockHit, x, y, 0, 
	obj_player.oneHandedThrowRange, obj_player.oneHandedThrowRange, 100, false, 9);

// set closed captions
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Crack]"
}

// create sound radius at rock's position
instance_create_layer(x, y, "Visual_Effects_Layer", obj_soundRadius);