/// @description At end of room

// stop looping ambient sounds
audio_stop_sound(bgrSound_gameAmbient);

// calculate end-of-level score and send to global variable
global.PlayerScore = (currTimeFrames / room_speed) * global.PointsPerSecond;