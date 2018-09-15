// step script used by spectre in investigation state

// move towards search point
direction = point_direction(x, y, searchPointX, searchPointY);
speed = investigateSpeed;

// if spectre reaches search point within a certain tolerance
if ((x <= searchPointX + 32 && x >= searchPointX - 32) 
&& (y <= searchPointY + 32 && y >= searchPointY - 32))
{
	// stop spectre and set its state to search point
	speed = 0;
	currState = spectreState.search;
	
	// reset search counter
	currSearchTime = 0;
}