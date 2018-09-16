/// @description Used for initialization

// create list of objects to reveal upon interaction
toReveal = ds_list_create();

// populate to-reveal list with revealable walls within range
with (obj_revealableWall)
{
	// if revealable wall is within set range, add to list
	if (distance_to_point(other.x, other.y) <= other.revealRadius)
		ds_list_add(other.toReveal, id);
}

// populate to-reveal list with revealable floors within range
with (obj_revealableFloor)
{
	// if floor tile is within set range, add to list
	if (distance_to_point(other.x, other.y) <= other.revealRadius)
		ds_list_add(other.toReveal, id);
}