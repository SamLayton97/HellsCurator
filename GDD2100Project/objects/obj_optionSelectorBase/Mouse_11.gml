/// @description When mouse leaves button

// switch to proper std box sprite
if (!isSelected)
	sprite_index = spr_uncheckedBox;
else
	sprite_index = spr_checkedBox;
	
// if in blind mode, stop appropriate voice over sound
if (global.BlindModeEnabled)
{
	if (audio_is_playing(enableSound))
		audio_stop_sound(enableSound);
	else if (audio_is_playing(disableSound))
		audio_stop_sound(disableSound);
}