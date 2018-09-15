/// @description Used for initialization

// declare terminal position variables
terminalX = mouse_x;
terminalY = mouse_y;

// set initial speed and direction of rock
direction = point_direction(x, y, mouse_x, mouse_y);
speed = rockSpeed;
image_angle = direction;
