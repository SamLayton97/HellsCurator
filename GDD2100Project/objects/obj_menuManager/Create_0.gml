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

// defines enumeration of potential game difficulties
enum Difficulty 
{
	easy,
	medium,
	hard
}

// defines enumeration of possible character skins
enum CharSkin
{
	standard,
	nerd,
	wounded,
	undead
}