/// @description Called once per frame

// if player has finished tutorial
if (obj_gameManager.tutorialFinished)
{
	// if "between sub images" counter has exceeded number of frames between timer's sub image
	if (betweenImagesCounter >= framesBetweenSubImages)
	{
		// increment current sub image (if not already at final one)
		if (currSubImage < numOfSubImages - 1) currSubImage++;
	
		// reset counter
		betweenImagesCounter = 0;
	}
	// otherwise, increment counter
	else
		betweenImagesCounter++;
}
