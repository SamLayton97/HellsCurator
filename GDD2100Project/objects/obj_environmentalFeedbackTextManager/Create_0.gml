/// @description Used for initialization

// define duration values
totalFrames = feedbackDuration * room_speed;
currFrameCounter = totalFrames;

// calculate space to draw captions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
textX = screenWidth / 2;
textY = (screenHeight / 2) - 100;

// define string to write (set safe default)
text = "null";
