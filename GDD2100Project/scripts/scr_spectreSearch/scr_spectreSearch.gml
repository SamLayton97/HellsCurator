// step script used by spectre in search state

// if search time expires
if (currSearchTime >= searchSeconds * room_speed)
{
	// set spectre to return to path
	currState = spectreState.goBack;
}
// otherwise, increment search state
else
	currSearchTime++;