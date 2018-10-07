/// @description When player collides with spectre

// destroy self
instance_destroy(id);

// stop spectre's attack looping sounds and free spectre's used emitters
audio_stop_sound(sfx_attackSpectreLoop);
with (obj_spectre)
	audio_emitter_free(myEmitter);