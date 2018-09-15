/// @description Called when player is killed

// spawn claw mark visual effect and death screen
instance_create_layer(x, y, "Visual_Effects_Layer", obj_clawMark);
if (!killedByBook)
	instance_create_layer(x, y, "Visual_Effects_Layer", obj_deathScreen);
else 
	instance_create_layer(x, y, "Visual_Effects_Layer", obj_unworthyScreen);
	
// play gender-specific death sound (WEEK 1 ONLY MALE)
if (isMale)
	audio_play_sound(sfx_maleDeath, 13, false);