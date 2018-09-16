/// @description When player collides with holy bell

// set holding bell to true and swap sprite accordingly
holdingBell = true;
sprite_index = spr_playerHoldingBell;

// play pick-up sound effect
audio_play_sound(sfx_pickup, 8, false);