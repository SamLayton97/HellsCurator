/// @description When player 2 activates third ability

// if ability 3 is ready
if (ability3Ready)
{
	// set ability to false
	ability3Ready = false;
	
	// cause player 1's character to sneeze (spawn a sound radius)
	instance_create_layer(obj_player.x, obj_player.y, "Visual_Effects_Layer", obj_soundRadius);
	audio_play_sound(sfx_maleSneeze, 10, false);
}