/// @description Called once per frame

// TODO: darken game at 30 seconds remain, send spectres in at 0

// CURRENT:
// if remaining frames hit 0, kill player
if (currTimeFrames <= 0)
	instance_destroy(obj_player);
// otherwise, decrement remaining frames
else
	currTimeFrames--;