// step event controlling player's walking animation

// if player displaced their position between frames
if (!(x == xprevious && y == yprevious))
{
	// if animation counter is less than half a full cycle, show first frame
	if (walkAnimCounter < walkCycleSpeed / 2)
		image_index = 1;
	// otherwise, show second
	else
		image_index = 2;
		
	// increment counter and reset if appropriate
	walkAnimCounter++;
	if (walkAnimCounter >= walkCycleSpeed)
		walkAnimCounter = 0;
}


// if player is stationary, stop animation and reset walk cycle
if (x == xprevious && y == yprevious)
{
	image_index = 0;
	walkAnimCounter = 0;
}