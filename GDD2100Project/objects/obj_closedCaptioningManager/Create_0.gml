/// @description Used for initialization

// define duration values
totalFrames = captionDuration * room_speed;
currFrameCounter = totalFrames;

// calculate space to draw captions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
captionsX = screenWidth / 2;
captionsY = screenHeight - 120;

// define string to write (set safe default)
captionText = "test";

// at start of room, caption background noises if appropriate
if (global.ClosedCaptioningEnabled)
{
	currFrameCounter = 0;
	captionText = "[Nightmare sounds]";
}
