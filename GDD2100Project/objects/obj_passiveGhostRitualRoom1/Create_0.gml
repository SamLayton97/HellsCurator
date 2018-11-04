/// @description Used for initialization

// declare collision variables
isColliding = false;

// save screen coordinates and determine place to draw text box
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);
drawX = screenWidth / 2;
drawY = screenHeight / 2 - 200;

// save dimensions of text box sprite
boxWidth = sprite_get_width(spr_tutorialMessageTextBox);
boxHeight = sprite_get_height(spr_tutorialMessageTextBox);

// save height of message string
stringHeight = string_height(myMessage);

// initialize destination point variables
destX = x;
destY = y;

// create audio emitter and set falloff model
myEmitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(myEmitter, 50, 300, 1.5);
audio_emitter_position(myEmitter, x, y, 0);

// play loopable "passive ghost" sound effect
audio_play_sound_on(myEmitter, sfx_passiveGhostLoop, 2, true);