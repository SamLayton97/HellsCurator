/// @description When user presses button

// if paired skin has been purchased,
if (isPurchased)
{
	// select skin
	isSelected = true;
	global.CharacterSkin = CharSkin.wounded; 
	
	// play button press sound
	audio_play_sound(sfx_buttonPress, 10, false);
	
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
{
	isPurchased = true;
	global.HurtSkinPurchased = true;
	
	// play purchase sound
	audio_play_sound(sfx_purchase, 10, false);
}