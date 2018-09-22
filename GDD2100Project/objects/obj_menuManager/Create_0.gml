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

// by default, set global game mode to solo and difficulty to normal
global.GameMode = gameMode.solo;
global.GameDifficulty = Difficulty.medium;
