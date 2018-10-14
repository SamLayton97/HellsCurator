/// @description When player collides with end gate (i.e., completes tutorial)

// tell game manager that player has finished tutorial
obj_gameManager.tutorialFinished = true;

// reset player's rock count to 0
obj_player.rockCount = 0;

// play menacing sound effect
audio_play_sound(sfx_passingTutorialThreshold, 7, false);

// set closed captioning
if (global.ClosedCaptioningEnabled)
{
	obj_closedCaptioningManager.currFrameCounter = 0;
	obj_closedCaptioningManager.captionText = "[Evil presence emerges]";
}

// destroy gate
instance_destroy(id);