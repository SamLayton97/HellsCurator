/// @description Draw book UI element to GUI

// draw UI element if player has book of the dead and is living
if (instance_exists(obj_player) && obj_player.holdingBook)
	draw_sprite(spr_bookOfTheDeadUI, 0, drawX, drawY);