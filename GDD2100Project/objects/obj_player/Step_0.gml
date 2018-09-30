/// @description Called once per frame

// reset user input fields
xInput = 0;
yInput = 0;

// detect horizontal input from user
// and handles horizontal collisions
if ((keyboard_check(ord("A")) || keyboard_check(vk_left)) 
	&& !place_meeting(x - 24, y, base_solidObject))
	xInput = -1;
else if ((keyboard_check(ord("D")) || keyboard_check(vk_right)) 
	&& !place_meeting(x + 24, y, base_solidObject))
	xInput = 1;

// detect vertical input from user
if ((keyboard_check(ord("W")) || keyboard_check(vk_up))
&& !place_meeting(x, y - 24, base_solidObject))
	yInput = -1;
else if ((keyboard_check(ord("S")) || keyboard_check(vk_down))
	&& !place_meeting(x, y + 24, base_solidObject))
	yInput = 1;
	
// if near a wall,
if (place_meeting(x, y + 24, base_solidObject) || place_meeting(x, y - 24, base_solidObject) 
|| place_meeting(x + 24, y, base_solidObject) || place_meeting(x - 24, y, base_solidObject))
{
	// if not already colliding with wall, play sound
	if (!collidingWithWall)
	{
		audio_play_sound(sfx_wallHit, 5, false);
		collidingWithWall = true;
	}
}
else
	collidingWithWall = false;
	
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
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Pace slows]";
		}
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
		
		// set closed captions
		if (global.ClosedCaptioningEnabled)
		{
			obj_closedCaptioningManager.currFrameCounter = 0;
			obj_closedCaptioningManager.captionText = "[Pace quickens]";
		}
	}
	// otherwise, increment counter
	else
		speedChangeCounter++;
}

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

// if directional investigate indicator is active, increment counter
if (investigateIndicatorCounter < maxIndicatorFrames)
	investigateIndicatorCounter++;
	
// if directional attack indicator is active, increment counter
if (attackIndicatorCounter < maxIndicatorFrames)
	attackIndicatorCounter++;

// if player is moving and walk cycle isn't already playing
if (!(x == xprevious && y == yprevious) && !audio_is_playing(sfx_walkCycle))
	// loop player's walk cycle
	audio_play_sound(sfx_walkCycle, 4, true);

// if player is stationary, stop walk cycle
if(x == xprevious && y == yprevious)
	audio_stop_sound(sfx_walkCycle);

// if player is two-handed, face sprite towards mouse position
if (!global.OneHandedModeEnabled)
	image_angle = point_direction(x, y, mouse_x, mouse_y);
// otherwise handle direction in one-handed script
else
	scr_oneHandedPlayer();
