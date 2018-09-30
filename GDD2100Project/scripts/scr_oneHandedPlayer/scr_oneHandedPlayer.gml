// step event script used for players opting for one-handed mode

// face player sprite towards PC's movement direction
// handle cardinal directions
if (xInput > 0 && yInput == 0)		// E
	image_angle = 0;
else if (xInput < 0 && yInput == 0)	// W
	image_angle = 180;
else if (xInput == 0 && yInput > 0)	// S
	image_angle = 270;
else if (xInput == 0 && yInput < 0)	// N
	image_angle = 90;
// handle intermediate directions
else if (xInput > 0 && yInput < 0)	// NE
	image_angle = 45;
else if (xInput < 0 && yInput < 0)	// NW
	image_angle = 135;
else if (xInput > 0 && yInput > 0)	// SE
	image_angle = 315;
else if (xInput < 0 && yInput > 0)	// SW
	image_angle = 225;