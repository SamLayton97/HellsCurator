/// @description When user left-clicks on button

event_inherited();

// if paired skin has been purchased, select skin
if (isPurchased)
	isSelected = true;
// else (not purchased), "buy" skin but don't select it
else
	isPurchased = true;