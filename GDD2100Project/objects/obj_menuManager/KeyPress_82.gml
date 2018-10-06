/// @description Called when user presses R

// if in blind mode and in help menu
if (global.BlindModeEnabled && room = HelpMenuRoom)
{
	// repeat blind mode instructions if not already playing
	if (!audio_is_playing(bld_snd_instructions))
		audio_play_sound(bld_snd_instructions, 10, false);
}