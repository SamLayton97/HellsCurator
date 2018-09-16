/// @description Called once per frame

// if radius is growing, expand draw radius
if (growingRadius)
	drawRadius += growthPerFrame;
// otherwise, shrink draw radius
else
	drawRadius -= growthPerFrame;

// if draw radius reaches max, begin to shrink it
if (growingRadius && drawRadius >= radius)
	growingRadius = false;
// if draw radius returns to 0, destroy sound radius object
else if (!growingRadius && drawRadius <= 0)
	instance_destroy();