/// @description Called when player is killed

// spawn claw mark visual effect and death screen
instance_create_layer(x, y, "Visual_Effects_Layer", obj_clawMark);
instance_create_layer(x, y, "Visual_Effects_Layer", obj_deathScreen);

// if footstep sound is playing, stop sound
if (audio_is_playing(sfx_walkCycle))
	audio_stop_sound(sfx_walkCycle);

// play gender-specific death sound (CURRENTLY ONLY MALE)
if (isMale)
	audio_play_sound(sfx_maleDeath, 13, false);

// if blind mode is enabled, play appropriate voice over
if (global.BlindModeEnabled)
	audio_play_sound(bld_snd_gameOverVoiceOver, 10, false);

// set closed captioning
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Dying groan]";
}