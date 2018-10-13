/// @description When player collides with book

// stop playing proximity sound
audio_stop_sound(sfx_bookLoop);

// if compass feature is not disabled, destroy compass
if (!global.ObjectiveCompassDisabled)
	instance_destroy(obj_objectiveCompass);