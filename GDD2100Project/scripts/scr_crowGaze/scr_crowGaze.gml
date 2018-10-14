// handles step event of crow in "Gaze" state

// handle operations of crow's vision cone
with(myVisionCone)
{
	// scan with vision cone
	// increment / decrement look offset
	if (lookingRight)
		currRotation -= lookSpeed;
	else
		currRotation += lookSpeed;

	// if rotation offset exceeds max angle, reverse look direction
	if (currRotation >= maxRotationAngle || currRotation <= -maxRotationAngle)
		lookingRight = !lookingRight;
		
	// angle vision cone to match crow's angle plus look offset
	image_angle = other.image_angle + currRotation;
}