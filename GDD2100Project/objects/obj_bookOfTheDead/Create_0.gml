/// @description Used for initialization

// if player has already collected book
// (occurs if player loaded from checkpoint)
if (global.SavedHoldingBook)
	// destroy instance of book
	instance_destroy(id);

// create audio emitter at own position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, 1.1);
audio_emitter_position(myEmitter, x, y, 0);

// loop proximity sound
audio_play_sound_on(myEmitter, sfx_bookLoop, true, 5);