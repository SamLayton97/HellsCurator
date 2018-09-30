/// @description When player clicks button

// play button press sound effect
audio_play_sound(sfx_buttonPress, 10, false);

// change sprite based on selected / unselected
if (!isSelected)
	sprite_index = spr_checkedBoxHover;
else
	sprite_index = spr_uncheckedBoxHover;