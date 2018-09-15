/// @description Called once per frame

// if life counter exceeds lifespan, destroy self
if (lifeCounter >= lifespan)
	instance_destroy();
// otherwise, increment life counter
else
	lifeCounter++;