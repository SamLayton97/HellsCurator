/// @description Used for initialization

// set selectivity and text to display
isSelected = global.ClosedCaptioningEnabled;
optionText = "Closed Captioning";

// set sprite based on initial selectivity
if (!isSelected)
	sprite_index = spr_uncheckedBox;
else
	sprite_index = spr_checkedBox;