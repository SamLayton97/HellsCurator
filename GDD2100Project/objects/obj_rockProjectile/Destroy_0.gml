/// @description Called when object is destroyed

// create audio emitter at destroy position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 200, .15);
audio_emitter_position(myEmitter, x, y, 0);

// play "wall hit" sound in 3D space
audio_play_sound_on(myEmitter, sfx_rockHit, false, 10);

// set closed captions
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Crack]"
}

// create sound radius at rock's position
instance_create_layer(x, y, "Visual_Effects_Layer", obj_soundRadius);