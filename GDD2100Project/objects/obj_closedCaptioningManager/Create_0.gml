/// @description Used for initialization

// define duration values
totalFrames = captionDuration * room_speed;
currFrameCounter = 0;

// calculate space to draw captions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
captionsX = screenWidth / 2;
captionsY = screenHeight - 120;

// define string to write (set safe default)
captionText = "[Nightmare noises]";