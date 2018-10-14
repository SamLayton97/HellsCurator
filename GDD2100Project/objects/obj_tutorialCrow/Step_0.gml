/// @description Called once per frame

// follow crow script appropriate to current state
switch (currState)
{
	case crowState.gaze: scr_crowGaze(); break;
	case crowState.observe: scr_crowObserve(); break;
	default: scr_crowGaze(); break;
}