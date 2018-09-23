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

// Set various parameters based on game difficulty
switch (obj_gameManager.difficulty)
{
	case Difficulty.easy:
		patrolSpeed = 2.1;
		investigateSpeed = 2.5;
		searchSeconds = 5;
		sightTolerance = 1.65;
		drawVisionCone = true;
		drawAgroRadius = true;
		break;
	case Difficulty.medium:
		patrolSpeed = 2.1;
		investigateSpeed = 2.5;
		searchSeconds = 4;
		sightTolerance = 1.4;
		drawVisionCone = true;
		drawAgroRadius = false;
		break;
	case Difficulty.hard:
		patrolSpeed = 2.3;
		investigateSpeed = 2.7;
		searchSeconds = 3;
		sightTolerance = 1.2;
		drawVisionCone = false;
		drawAgroRadius = false;
		break;
	default:
		break;
}


// search support variables
searchPointX = 0;
searchPointY = 0;
currSearchTime = 0;

// set patrol path according to instance id
if (id == inst_61DD4919)
	myPath = path_spectreDemoRoom;
else if (id == inst_31B1DCC8)
	myPath = path_spectreDemoRoom1;
else if (id == inst_4D3E3EC3)
	myPath = path_spectreDemoRoom2;

// pathing support variables
exitPointX = 0;
exitPointY = 0;
exitPosition = 0;

// sight tolerance variables
currSightVal = 0;
maxSightVal = sightTolerance * room_speed;

// create vision cone for itself and set it to be invisible if appropriate
myVisionCone = instance_create_layer(x, y, "Vision_Layer", obj_spectreVisionCone);
if (!drawVisionCone)
	myVisionCone.visible = false;

// start by patrolling set path
currState = spectreState.patrol;
path_start(myPath, patrolSpeed, path_action_continue, true);