/// @description Used for initialization

event_inherited();

// initializes purchase and selection variables
isPurchased = global.HurtSkinPurchased;
if (global.CharacterSkin == CharSkin.wounded)
	isSelected = true;
else
	isSelected = false;

// sets price
myPrice = "$0.49";

// sets voice over sound
mySound = bld_snd_woundedSkin;
