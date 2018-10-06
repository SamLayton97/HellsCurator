/// @description Called once per frame

// reset user input fields
xInput = 0;
yInput = 0;

// detect horizontal input from user
// and handles horizontal collisions
if ((keyboard_check(ord("A")) || keyboard_check(vk_left) || keyboard_check(ord("J"))) 
	&& !place_meeting(x - 24, y, base_solidObject))
	xInput = -1;
else if ((keyboard_check(ord("D")) || keyboard_check(vk_right) || keyboard_check(ord("L"))) 
	&& !place_meeting(x + 24, y, base_solidObject))
	xInput = 1;

// detect vertical input from user
if ((keyboard_check(ord("W")) || keyboard_check(vk_up) || keyboard_check(ord("I")))
&& !place_meeting(x, y - 24, base_solidObject))
	yInput = -1;
else if ((keyboard_check(ord("S")) || keyboard_check(vk_down) || keyboard_check(ord("K")))
	&& !place_meeting(x, y + 24, base_solidObject))
	yInput = 1;
	
// handle potential collisions with walls
scr_playerWallCollisions();
	
// handle speed up / down effects when necessary
scr_handleSpeedUpDownEffects();

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

// if player is moving and walk cycle isn't already playing
if (!(x == xprevious && y == yprevious) && !audio_is_playing(sfx_walkCycle))
	// loop player's walk cycle
	audio_play_sound(sfx_walkCycle, 4, true);

// if player is stationary, stop walk cycle
if(x == xprevious && y == yprevious)
	audio_stop_sound(sfx_walkCycle);

// update audio listener to follow player's position
audio_listener_set_position(0, x, y, 0);

// if player is two-handed, face sprite towards mouse position
if (!global.OneHandedModeEnabled && !global.BlindModeEnabled)
	image_angle = point_direction(x, y, mouse_x, mouse_y);
// otherwise handle direction in one-handed script
else
	scr_oneHandedPlayer();

// if directional investigate indicator is active, increment counter
if (investigateIndicatorCounter < maxIndicatorFrames)
	investigateIndicatorCounter++;
	
// if directional attack indicator is active, increment counter
if (attackIndicatorCounter < maxIndicatorFrames)
	attackIndicatorCounter++;