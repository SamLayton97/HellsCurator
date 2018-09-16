/// @description Used for initialization

// spectre AI's possible states
enum spectreState
{
	patrol,
	investigate,
	search,
	goBack,
	attack,
	idle
}

// search support variables
searchPointX = 0;
searchPointY = 0;
currSearchTime = 0;

// set path according to level-wide patrol counter
if (obj_gameManager.patrolCounter == 0)
	myPath = path_spectreDemoRoom;
else if (obj_gameManager.patrolCounter == 1)
	myPath = path_spectreDemoRoom1;

// pathing support variables
exitPointX = 0;
exitPointY = 0;
exitPosition = 0;

// sight tolerance variables
currSightVal = 0;
maxSightVal = sightTolerance * room_speed;

// create vision cone for itself
myVisionCone = instance_create_layer(x, y, "Vision_Layer", obj_spectreVisionCone);

// start by patrolling set path
currState = spectreState.patrol;
path_start(myPath, patrolSpeed, path_action_continue, true);
