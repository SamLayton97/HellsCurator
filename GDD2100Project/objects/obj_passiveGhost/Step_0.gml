/// @description Called once per frame

// if player is colliding with message and page isn't already displaying message
if (place_meeting(x, y, obj_player) && !isColliding)
{
	// set collision variable to true
	isColliding = true;
	
	// play "talking ghost" sound
	audio_play_sound(sfx_passiveGhostSpeak, 4, false);
}

// if player is not colliding with note, set collision flag to false
if (!place_meeting(x, y, obj_player))
	isColliding = false;

// move towards destination point
direction = point_direction(x, y, destX, destY);
speed = travelSpeed;

// direct sprite towards destination point
image_angle = direction;

// if ghost reaches destination point within a certain tolerance
if ((x <= destX + 32 && x >= destY - 32) 
&& (y <= destX + 32 && y >= destY - 32))
{
	// stop spectre and set its state to search point
	speed = 0;
}
