/// @description Used for initialization

// declare collision variables
isColliding = false;

// declare message variables
myName = "Mysterious Note";
myMessage = "TEST";

// save screen coordinates and determine place to draw text box
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
drawX = screenWidth / 2;
drawY = screenHeight / 2 - 200;