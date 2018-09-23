/// @description Used for initialization

event_inherited();

// initializes purchase and selection variables
isPurchased = global.NerdSkinPurchased;
if (global.CharacterSkin == CharSkin.nerd)
	isSelected = true;
else
	isSelected = false;

// sets price
myPrice = "$0.99";