/// @description When user left-clicks on button

event_inherited();

// if paired skin has been purchased,
if (isPurchased)
{
	// select skin
	isSelected = true;
	
	// deselect all other skins
	if (!ds_list_empty(otherSkins))
	{
		for (var i = 0; i < ds_list_size(otherSkins); i++)
		{
			var currSkin = ds_list_find_value(otherSkins, i);
			currSkin.isSelected = false;
		}
	}
}
// else (not purchased), "buy" skin but don't select it
else
	isPurchased = true;