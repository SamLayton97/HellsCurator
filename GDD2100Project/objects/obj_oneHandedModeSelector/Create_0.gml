/// @description Used for initialization

// set selectivity and text to display
isSelected = global.OneHandedModeEnabled;
optionText = "Enable One-Handed Mode";

// set sprite based on initial selectivity
if (!isSelected)
	sprite_index = spr_uncheckedBox;
else
	sprite_index = spr_checkedBox;
	
// initialize voice over sounds
enableSound = bld_snd_enableOneHandedMode;
disableSound = bld_snd_disableOneHandedMode;

event_inherited();