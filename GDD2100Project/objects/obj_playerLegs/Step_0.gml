/// @description Called once per frame

// follow position of player
x = obj_player.x;
y = obj_player.y;

// face cardinal walking directions of player
if (keyboard_check(ord("D")))
	image_angle = 0;
else if (keyboard_check(ord("W")))
	image_angle = 90;
else if (keyboard_check(ord("A")))
	image_angle = 180;
else if (keyboard_check(ord("S")))
	image_angle = -270;

// face intermediate walking directions of player
if (keyboard_check(ord("D")) && keyboard_check(ord("W")))
	image_angle = 45;
else if (keyboard_check(ord("D")) && keyboard_check(ord("S")))
	image_angle = 315;
else if (keyboard_check(ord("A")) && keyboard_check(ord("W")))
	image_angle = 135;
else if (keyboard_check(ord("A")) && keyboard_check(ord("S")))
	image_angle = 225;

// if player displaced their position between frames
if (!(x == xprevious && y == yprevious))
{
	// if animation counter is less than half a full cycle, show first frame
	if (walkAnimCounter < walkAnimLength / 2)
		image_index = 1;
	// otherwise, show second
	else
		image_index = 2;
		
	// increment counter and reset if appropriate
	walkAnimCounter++;
	if (walkAnimCounter >= walkAnimLength)
		walkAnimCounter = 0;
}


// if player is stationary, stop animation and reset walk cycle
if (x == xprevious && y == yprevious)
{
	image_index = 0;
	walkAnimCounter = 0;
}