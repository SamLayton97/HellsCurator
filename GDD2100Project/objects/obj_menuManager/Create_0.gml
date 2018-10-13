/// @description Used for initialization

// starts game fullscreen
isFullScreen = true;
window_set_fullscreen(isFullScreen);

// if in room where background's font may impact dyslexic players,
// swap background to dyslexic-friendly version
if (global.DyslexiaTextEnabled)
{
	if (room == SettingTheStageRoom)
	{
		var layerID = layer_get_id("Background");
		var bgrID = layer_background_get_id(layerID);
		layer_background_sprite(bgrID, spr_settingTheStageDyslexia);
	}
	else if (room == MultiplayerModeSelectRoom)
	{
		var layerID = layer_get_id("Background");
		var bgrID = layer_background_get_id(layerID);
		layer_background_sprite(bgrID, spr_multiplayerSelectDyslexia);
	}
}