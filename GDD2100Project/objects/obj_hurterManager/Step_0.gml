/// @description Called once per frame

// if ability 1 is not ready, handle its timer
if (!ability1Ready)
{
	// if ability 1 timer finishes
	if (ability1FrameCounter <= 0)
	{
		// set ability ready for use and reset counter
		ability1Ready = true;
		ability1FrameCounter = ability1BetweenUses;
	}
	// otherwise, increment counter
	else
		ability1FrameCounter--;
}

// if ability 2 is not ready, handle its timer
if (!ability2Ready)
{
	// if ability 1 timer finishes
	if (ability2FrameCounter <= 0)
	{
		// set ability ready for use and reset counter
		ability2Ready = true;
		ability2FrameCounter = ability2BetweenUses;
	}
	// otherwise, increment counter
	else
		ability2FrameCounter--;
}

// if ability 3 is not ready, handle its timer
if (!ability3Ready)
{
	// if ability 1 timer finishes
	if (ability3FrameCounter <= 0)
	{
		// set ability ready for use and reset counter
		ability3Ready = true;
		ability3FrameCounter = ability3BetweenUses;
	}
	// otherwise, increment counter
	else
		ability3FrameCounter--;
}