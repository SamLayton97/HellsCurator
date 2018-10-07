/// @description Used for initialization

// create emitter at own location
// create audio emitter at spectre's position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, .2);
audio_emitter_position(myEmitter, x, y, 0);