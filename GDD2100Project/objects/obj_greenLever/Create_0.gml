/// @description Used for initialization

// set sign / leverl's active-ness
active = global.SavedGreenSignActive;

// create audio emitter at sign's position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, .7);
audio_emitter_position(myEmitter, x, y, 0);

// save looping sound
myLoopSound = sfx_greenLoop;