/// @description At start of room

// loop room's ambient sounds
audio_play_sound(bgrSound_gameAmbient, 5, true);

// if mouse cursor isn't game reticle, switch it to be so
if (cursor_sprite != spr_reticle)
	cursor_sprite = spr_reticle;