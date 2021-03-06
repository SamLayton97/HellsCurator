/// @description Used for initialization

// initialize sign / lever's active-ness
active = global.SavedOrangeSignActive;

// initialize sprite to match state of active-ness
if (active)
	sprite_index = spr_orangeLeverActive;

// create audio emitter at sign's position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, .7);
audio_emitter_position(myEmitter, x, y, 0);

// save its loopable sound
myLoopSound = sfx_orangeLoop;
