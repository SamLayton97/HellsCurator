/// @description Used for initialization

// save screen dimensions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);

// calculate duration between uses of each ability
ability1BetweenUses = ability1Countdown * room_speed;
ability2BetweenUses = ability2Countdown * room_speed;
ability3BetweenUses = ability3Countdown * room_speed;

// declare ability activation variables
ability1Ready = true;
ability2Ready = true;
ability3Ready = true;
ability1FrameCounter = ability1BetweenUses;
ability2FrameCounter = ability2BetweenUses;
ability3FrameCounter = ability3BetweenUses;
