/// @description When player mouses over button

// play mouse over sound effect
audio_play_sound(sfx_buttonHover, 10, false);

// switch to proper highlighed sprite
if (!isSelected)
	sprite_index = spr_uncheckedBoxHover;
else
	sprite_index = spr_checkedBoxHover;