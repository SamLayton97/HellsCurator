/// @description Used for initialization

// initialize item variables
rockCount = global.SavedRockCount;
holdingBell = global.SavedHoldingBell;
holdingBook = global.SavedHoldingBook;

// if blind mode is enabled
if (global.BlindModeEnabled)
{
	// start player with (infinite) rocks
	rockCount = 1;
}

// if save state location isn't at reset default
if (global.SaveStateX != 0 && global.SaveStateY != 0)
{
	// move player to save state
	x = global.SaveStateX;
	y = global.SaveStateY;
}

// initializes PC-to-world interaction
isInteracting = false;

// declares movement variables
playerSpeed = regularPlayerSpeed;
spedUp = false;
spedDown = false;
speedChangeCounter = 0;
totalSpeedChangeFrames = speedChangeDuration * room_speed;

// declares "collide with wall" sound support variables
collidingWithWall = false;
collidingWithSecretWall = false;
collidingWithPuzzleGate = false;

// initializes directional aid variables
maxIndicatorFrames = room_speed;
investigateIndicatorCounter = maxIndicatorFrames;
attackIndicatorCounter = maxIndicatorFrames;
investigateIndicatorAngle = 0;
attackIndicatorAngle = 0;

// set orientation of audio listener
audio_listener_orientation(0, 0, -1000, 0, 1, 0);

// based on selected skin, change sprite as appropriate
switch (global.CharacterSkin)
{
	case CharSkin.standard:
		mySkin = spr_player;
		myHoldSkin = spr_playerHoldingBell;
		break;
	case CharSkin.nerd:
		mySkin = spr_nerdPlayer;
		myHoldSkin = spr_nerdPlayerHoldingBell;
		break;
	case CharSkin.wounded:
		mySkin = spr_hurtPlayer;
		myHoldSkin = spr_hurtPlayerHoldingBell;
		break;
	case CharSkin.undead:
		mySkin = spr_skeletonPlayer;
		myHoldSkin = spr_skeletonPlayerHoldingBell;
		break;
}

// change sprite as appropriate (based on whether they start with bell)
if (!holdingBell)
	sprite_index = mySkin;
else
	sprite_index = myHoldSkin;