/// @description Called once per frame

// if frame counter exceeds duration, destroy text
if (frameCounter >= totalFrames)
	instance_destroy(id);
// otherwise, increment counter
else
	frameCounter++;