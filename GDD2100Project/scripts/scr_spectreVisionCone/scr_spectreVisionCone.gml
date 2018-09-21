// step script used by spectre to handle their vision cone

// handle operations of this spectre's vision cone
with (myVisionCone)
{
		// follow position of spectre
	x = other.x;
	y = other.y;

	// if spectre is patrolling, scan with vision cone
	if (other.currState == spectreState.patrol)
	{
		// increment / decrement look offset
		if (lookingRight)
			currRotation -= lookSpeed;
		else
			currRotation += lookSpeed;

		// if rotation offset exceeds max angle, reverse look direction
		if (currRotation >= maxRotationAngle || currRotation <= -maxRotationAngle)
			lookingRight = !lookingRight;
	}
	else if (other.currState == spectreState.search)
	{
		// increment / decrement look offset at double speed
		if (lookingRight)
			currRotation -= lookSpeed * 2;
		else
			currRotation += lookSpeed * 2;

		// if rotation offset exceeds max angle, reverse look direction
		if (currRotation >= maxRotationAngle || currRotation <= -maxRotationAngle)
			lookingRight = !lookingRight;
	}
	// otherwise (spectre is not searching or patrolling)
	else
	{
		// apply no offset
		currRotation = 0;
	}

	// angle vision cone to match spectre's direction plus look offset
	image_angle = other.image_angle + currRotation;
}