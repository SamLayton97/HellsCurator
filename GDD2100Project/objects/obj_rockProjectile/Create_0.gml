/// @description Used for initialization

// set direction and terminal position of rock for standard control scheme
if (!global.OneHandedModeEnabled && !global.BlindModeEnabled)
{
	direction = point_direction(x, y, mouse_x, mouse_y);
	terminalX = mouse_x;
	terminalY = mouse_y;
}
// set direction and terminal position for blind / one-handed control scheme
else 
{
	direction = point_direction(x, y, x + obj_player.throwX, y - obj_player.throwY);
	terminalX = x + obj_player.throwX;
	terminalY = y - obj_player.throwY;
}

// set speed and angle to draw projectile
speed = rockSpeed;
image_angle = direction;
