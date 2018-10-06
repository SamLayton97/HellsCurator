/// @description Used for initialization

event_inherited();

// initializes purchase and selection variables
isPurchased = global.StandardSkinPurchased;
if (global.CharacterSkin == CharSkin.standard)
	isSelected = true;
else
	isSelected = false;

// sets price of default to free
myPrice = "FREE";

// sets voice over sound
mySound = bld_snd_standardSkin;