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

// TEST: create instance of darkness effect to test its speed
instance_create_layer(x, y, "Visual_Effects_Layer", obj_darknessEffect);