/// @description Used for initialization

// set direction and terminal position of rock
if (!global.OneHandedModeEnabled)
{
	direction = point_direction(x, y, mouse_x, mouse_y);
	terminalX = mouse_x;
	terminalY = mouse_y;
}
else 
{
	direction = point_direction(x, y, x + obj_player.throwX, y - obj_player.throwY);
	terminalX = x + obj_player.throwX;
	terminalY = y - obj_player.throwY;
}

// set speed and angle to draw projectile
speed = rockSpeed;
image_angle = direction;
