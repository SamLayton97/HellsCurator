/// @description Draw rock icons to GUI

// TEST: draw static rock icon
//draw_sprite(spr_rockIcon, 0, drawX, initDrawY);

// if player exists
if (instance_exists(obj_player))
{
	// draw appropriate number of rock icons according to player's rock count
	// Note: Capped at 5 rocks
	if (obj_player.rockCount > 0)
		draw_sprite(spr_rockIcon, 0, drawX, initDrawY);
	if (obj_player.rockCount > 1)
		draw_sprite(spr_rockIcon, 0, drawX, initDrawY + spaceBetweenRocks);
	if (obj_player.rockCount > 2)
		draw_sprite(spr_rockIcon, 0, drawX + spaceBetweenRocks, initDrawY);
	if (obj_player.rockCount > 3)
		draw_sprite(spr_rockIcon, 0, drawX + spaceBetweenRocks, initDrawY + spaceBetweenRocks);
	if (obj_player.rockCount > 4)
		draw_sprite(spr_rockIcon, 0, drawX + 2 * spaceBetweenRocks, initDrawY);
}
