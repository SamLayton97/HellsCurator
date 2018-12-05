/// @description When room begins

// play ambient sounds
audio_play_sound(bgrSound_menuAmbient, 5, true);

// if cursor sprite is not already menu pointer, set it to be so
if (cursor_sprite != spr_menuPointer)
	cursor_sprite = spr_menuPointer;

// if on title screen and not in blind mode, play enable sound
if (room = TitleScreenRoom && !global.BlindModeEnabled)
	audio_play_sound(bld_snd_WelcomeBlindUser, 10, false);

// if already in blind mode, play voice over appropriate to room
if (global.BlindModeEnabled)
{
	if (room = SettingTheStageRoom)
	{
		audio_play_sound(bld_snd_settingTheStage, 10, false);
		
		// play book's proximity sound
		audio_play_sound(bgr_bookLoop, 5, true);
	}
	else if (room = DifficultySelectRoom)
		audio_play_sound(bld_snd_selectDifficulty, 10, false);
	else if (room = MultiplayerModeSelectRoom)
		audio_play_sound(bld_snd_multiplayerSelect, 10, false);
	else if (room = HelpMenuRoom)
		audio_play_sound(bld_snd_instructions, 10, false);
}
