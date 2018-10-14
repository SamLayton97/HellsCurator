/// @description Used for initialization

// declare collision variables
isColliding = false;

// save screen coordinates and determine place to draw text box
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
drawX = screenWidth / 2;
drawY = screenHeight / 2 - 200;

// save dimensions of text box sprite
boxWidth = sprite_get_width(spr_tutorialMessageTextBox);
boxHeight = sprite_get_height(spr_tutorialMessageTextBox);

// save height of message string
stringHeight = string_height(myMessage);

// initialize destination point variables
destX = x;
destY = y;