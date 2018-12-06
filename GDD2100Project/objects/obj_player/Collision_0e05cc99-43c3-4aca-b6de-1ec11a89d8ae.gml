/// @description When player collides with spectre

// destroy self
instance_destroy(id);
instance_destroy(obj_playerLegs);

// stop spectre's attack looping sounds and free spectre's used emitters
audio_stop_sound(sfx_attackSpectreLoop);
with (obj_spectre)
	audio_emitter_free(myEmitter);