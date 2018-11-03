/// @description Used for initialization

// calculate GUI draw coordinates
drawX = 168;
drawY = 168;

// declare animation support variables
currSubImage = 0;
numOfSubImages = 30;
betweenImagesCounter = 0;

// calculate speed of animation
framesBetweenSubImages = (room_speed * global.MaxScorableSeconds) / numOfSubImages;

// if saved time remaining is not 0 (i.e., player reloaded from checkpoint)
if (global.SavedTimeRemaining != 0)
{
	// set current sub image of hourglass to match time remaining
	percentRemaining = global.SavedTimeRemaining / (room_speed * global.MaxScorableSeconds);
	currSubImage = numOfSubImages - (percentRemaining * numOfSubImages);
}