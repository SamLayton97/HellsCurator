/// @description At end of room

// stop looping ambient sounds
audio_stop_sound(bgrSound_gameAmbient);
if (audio_is_playing(sfx_heartBeat))
	audio_stop_sound(sfx_heartBeat);

// calculate end-of-level score and send to global variable
global.PlayerScore = (currTimeFrames / room_speed) * global.PointsPerSecond;
global.PlayerScore += secretsFound * 1000;
global.PlayerScore -= rocksUsed * 350;
if (perfectStealth)
	global.PlayerScore += 8000;

// update other globals as appropriate
global.LevelRunTime = currTimeFrames / room_speed;
global.SecretsFound = secretsFound;
global.RocksUsed = rocksUsed;
global.PerfectStealth = perfectStealth;