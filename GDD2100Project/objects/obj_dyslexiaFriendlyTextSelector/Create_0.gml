/// @description Used for initialization

// set selectivity and text to display
isSelected = global.DyslexiaTextEnabled;
optionText = "Use dyslexia-friendly text";

// set sprite based on initial selectivity
if (!isSelected)
	sprite_index = spr_uncheckedBox;
else
	sprite_index = spr_checkedBox;
	
// initialize voice over sounds
enableSound = bld_snd_enableBlindMode;
disableSound = bld_snd_disableBlindMode;

event_inherited();