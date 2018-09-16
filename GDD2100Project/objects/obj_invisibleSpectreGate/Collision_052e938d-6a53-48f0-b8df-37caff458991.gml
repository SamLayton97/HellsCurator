/// @description When player passes through gate

// destroy self
instance_destroy(id);

// if spectre isn't chasing them (which is always game over)
if (obj_spectre.currState != spectreState.attack)
{
	// destroy current spectre and their vision cone
	instance_destroy(obj_spectre);
	instance_destroy(obj_spectreVisionCone);
	
	// increment spectre patrol
	obj_gameManager.patrolCounter++;
	
	// create new instance of spectre
	instance_create_layer(0, 0, "Agents_Layer", obj_spectre);
}
