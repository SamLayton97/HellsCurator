/// @description When player collides with book of the dead

// picks up book
holdingBook = true;
instance_destroy(other);

// play "pickup book" sound
audio_play_sound(sfx_pickedUpMessage, 15, false);