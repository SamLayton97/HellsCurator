/// @description Used for initialization

// initialize items
rockCount = 0;
holdingBell = false;

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

// initializes directional aid variables
maxIndicatorFrames = room_speed;
investigateIndicatorCounter = maxIndicatorFrames;
attackIndicatorCounter = maxIndicatorFrames;
investigateIndicatorAngle = 0;
attackIndicatorAngle = 0;

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
sprite_index = mySkin;