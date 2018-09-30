/// @description Used for initialization

// set selectivity and text to display
isSelected = global.DirectionalSoundAidEnabled;
optionText = "Directional Sound Aid";

// set sprite based on initial selectivity
if (!isSelected)
	sprite_index = spr_uncheckedBox;
else
	sprite_index = spr_checkedBox;