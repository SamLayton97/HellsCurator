/// @description Called when room begins

// swap background of room if user opts to use one-handed control scheme
if (global.OneHandedModeEnabled)
{
	// set background
	var layerID = layer_get_id("Background");
	var bgrID = layer_background_get_id(layerID);
	layer_background_sprite(bgrID, spr_altControlsInstructionsPage);
}