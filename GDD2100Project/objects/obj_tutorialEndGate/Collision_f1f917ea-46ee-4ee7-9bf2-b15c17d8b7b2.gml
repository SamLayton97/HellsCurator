/// @description When player collides with end gate (i.e., completes tutorial)

// tell game manager that player has finished tutorial
obj_gameManager.tutorialFinished = true;

// destroy gate
instance_destroy(id);