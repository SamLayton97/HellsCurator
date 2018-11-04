/// @description Used for initialization

// initialize sprites
inactiveSprite = spr_altarInactive;
activeSprite = spr_altarActive;

// initialize active state depending on whether player loads in holding book
// (branches when player loads from checkpoint with book)
if (global.SavedHoldingBook)
	active = true;
else
	active = false;