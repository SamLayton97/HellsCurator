/// @description Called once per frame

// follow player position
x = obj_player.x;
y = obj_player.y;

// if frame counter exceeds total frames, go to score room
if (frameCounter >= totalFrames)
	room_goto(EndOfLevelScoreRoom);
// otherwise, increment frame counter
else
	frameCounter++;