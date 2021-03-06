/// @description Used for initialization

// crow AI's possible states
enum crowState
{
	gaze,
	observe
}

// start crow in "Gaze" state
currState = crowState.gaze;

// create vision cone for self
myVisionCone = instance_create_layer(x, y, "Vision_Layer", obj_crowVisionCone);

// declare / set vision cone variables
myVisionCone.image_speed = 0;
breakStateAngle = 0;

// create audio emitter at crow's position
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, 0.1);
audio_emitter_position(myEmitter, x, y, 0);