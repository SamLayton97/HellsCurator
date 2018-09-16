/// @description Used for initialization

// starts game fullscreen
isFullScreen = true;
window_set_fullscreen(isFullScreen);

// defines enumeration of potential game modes
enum gameMode
{
	solo,
	helper,
	hurter
}

// by default, set global game mode to solo
global.GameMode = gameMode.solo;