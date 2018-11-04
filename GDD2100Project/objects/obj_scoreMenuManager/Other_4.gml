/// @description Called at when room starts

// TODO: set room background and
// play appropriate music based on how player completed level
if (global.CompletionByEscape)
{
	// set background
	var layerID = layer_get_id("Background");
	var bgrID = layer_background_get_id(layerID);
	layer_background_sprite(bgrID, spr_stageEscapedScreen);
	
	// set music
	audio_play_sound(bgrSound_menuAmbient, 5, true);
}
// set for if player wins by freeing spirits
else
{
	// set background
	var layerID = layer_get_id("Background");
	var bgrID = layer_background_get_id(layerID);
	layer_background_sprite(bgrID, spr_spiritsSavedScreen);
	
	// set music
	audio_play_sound(sfx_successMusic, 5, true);
}

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