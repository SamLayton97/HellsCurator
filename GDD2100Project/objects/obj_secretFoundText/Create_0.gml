/// @description Used for initialization

// save screen dimensions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);

// initialize duration variables
frameCounter = 0;
totalFrames = durationSeconds * room_speed;