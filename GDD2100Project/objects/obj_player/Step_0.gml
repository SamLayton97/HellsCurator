/// @description Called once per frame

// reset user input fields
xInput = 0;
yInput = 0;

// detect horizontal input from user
// and handles horizontal collisions
if (keyboard_check(ord("A")) && !place_meeting(x - 24, y, base_solidObject))
	xInput = -1;
else if (keyboard_check(ord("D")) && !place_meeting(x + 24, y, base_solidObject))
	xInput = 1;
	
// if sped up, handle speed change and timer
if (spedUp)
{
	// increase speed
	playerSpeed = increasedPlayerSpeed;
	
	// if speed counter exceeds max frames
	if (speedChangeCounter >= totalSpeedChangeFrames)
	{
		// reset speed and counter
		playerSpeed = regularPlayerSpeed;
		spedUp = false;
		speedChangeCounter = 0;
		
		// play slow down sound effect
		audio_play_sound(sfx_speedDown, 8, false);
	}
	// otherwise, increment counter
	else
		speedChangeCounter++;
}
// if sped down, handle speed change and timer
else if (spedDown)
{
	// increase speed
	playerSpeed = decreasedPlayerSpeed;
	
	// if speed counter exceeds max frames
	if (speedChangeCounter >= totalSpeedChangeFrames)
	{
		// reset speed and counter
		playerSpeed = regularPlayerSpeed;
		spedDown = false;
		speedChangeCounter = 0;
		
		// play speed up sound effect
		audio_play_sound(sfx_speedUp, 8, false);
	}
	// otherwise, increment counter
	else
		speedChangeCounter++;
}

// detect vertical input from user
if (keyboard_check(ord("W")) && !place_meeting(x, y - 24, base_solidObject))
	yInput = -1;
else if (keyboard_check(ord("S")) && !place_meeting(x, y + 24, base_solidObject))
	yInput = 1;
	
// move player according to registered input
if (xInput != 0 && yInput != 0)
{
	x += xInput * sqrt(playerSpeed * playerSpeed * 0.5);
	y += yInput * sqrt(playerSpeed * playerSpeed * 0.5);
}
else if (xInput != 0 || yInput != 0)
{
	x += xInput * playerSpeed;
	y += yInput * playerSpeed;
}

// rotate sprite to face mouse position
image_angle = point_direction(x, y, mouse_x, mouse_y);
