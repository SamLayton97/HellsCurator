/// @description Used for initialization

// sets effect's life span
lifeCounter = 0;
lifespan = lifespanSeconds * room_speed;

// play claw strike sound
audio_play_sound(sfx_clawStrike, 15, false);