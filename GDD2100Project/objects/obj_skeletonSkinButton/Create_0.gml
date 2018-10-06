/// @description Used for initialization

event_inherited();

// initializes purchase and selection variables
isPurchased = global.SkeletonSkinPurchased;
if (global.CharacterSkin == CharSkin.undead)
	isSelected = true;
else
	isSelected = false;

// sets price
myPrice = "$1.49";

// sets voice over sound
mySound = bld_snd_skeletonSkin;