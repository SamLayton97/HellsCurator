/// @description Called once per frame

// if player is colliding with message and page isn't already displaying message
if (place_meeting(x, y, obj_player) && !isColliding)
{
	// set collision variable to true
	isColliding = true;
	
	// play "picked up note" sound
	audio_play_sound(sfx_pickedUpMessage, 4, false);
	
	// if in blind mode and voice over isn't playing
	if (global.BlindModeEnabled && myVoiceOver != noone)
		audio_play_sound(myVoiceOver, 5, false);
}

// if player is not colliding with note, set collision flag to false
if (!place_meeting(x, y, obj_player))
{
	isColliding = false;
	
	// if playing, stop voice over sound
	if (audio_is_playing(myVoiceOver))
		audio_stop_sound(myVoiceOver);
}