/// @description Used for initialization

// save screen dimensions and initial coordinates to draw rock icons
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
drawX = 336;
initDrawY = 128;

// calculate space between rock icons
spaceBetweenRocks = 64 + 10;