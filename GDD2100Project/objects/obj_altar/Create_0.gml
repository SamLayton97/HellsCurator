/// @description Used for initialization

// create audio emitter at own position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, .9);
audio_emitter_position(myEmitter, x, y, 0);

// initialize sprites
inactiveSprite = spr_altarInactive;
activeSprite = spr_altarActive;

// starts proximity sound if player loads with book in hand
if (global.SavedHoldingBook)
	audio_play_sound_on(myEmitter, sfx_bookLoop, true, 5);