/// @description Called when player exits level

// "complete level", i.e., spawn transition effect
instance_create_layer(other.x, other.y, "Visual_Effects_Layer", obj_successTransition);
audio_play_sound(sfx_buttonPress, 15, false);

// destroy self
instance_destroy(id);