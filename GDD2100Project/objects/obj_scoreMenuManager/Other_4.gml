/// @description Called at when room starts

// play success music on loop
audio_play_sound(sfx_successMusic, 5, true);

// if blind mode is enabled
if (global.BlindModeEnabled)
{
	// play voice appropriate to earned rank
	if (global.PlayerScore >= 15000)
		audio_play_sound(bld_snd_RankS, 10, false);
	else if (global.PlayerScore >= 10000)
		audio_play_sound(bld_snd_RankA, 10, false);
	else if (global.PlayerScore >= 8000)
		audio_play_sound(bld_snd_RankB, 10, false);
	else if (global.PlayerScore >= 5000)
		audio_play_sound(bld_snd_RankC, 10, false);
	else
		audio_play_sound(bld_snd_RankD, 10, false);
}