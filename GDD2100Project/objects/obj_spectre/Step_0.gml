/// @description Called once per frame

// face spectre's sprite towards current direction
image_angle = direction;

// use certain step script appropriate to current state
switch (currState)
{
	case spectreState.patrol: scr_spectrePatrol(); break;
	case spectreState.investigate: 
		scr_spectreInvestigate();
		scr_sightTolerance();
		break;
	case spectreState.search: 
		scr_spectreSearch(); 
		scr_sightTolerance();
		break;
	case spectreState.goBack: 
		scr_spectreGoBack(); 
		scr_sightTolerance();
		break;
	case spectreState.attack: scr_spectreAttack(); break;
	default: scr_spectrePatrol();
}

// handle spectre's instant agro range
scr_spectreAgroRange();

// handle operations of this spectre's vision cone
scr_spectreVisionCone();

// update emitter position
audio_emitter_position(myEmitter, x, y, 0);

// if in attack mode and not playing attack loop,
if (currState == spectreState.attack && !audio_is_playing(sfx_attackSpectreLoop))
	// loop sound from my emitter
	audio_play_sound_on(myEmitter, sfx_attackSpectreLoop, true, 6);
	