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

// pathing support variables
myPath = path_spectreDemoRoom;
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
