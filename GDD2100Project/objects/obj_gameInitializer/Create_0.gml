/// @description Used for initialization

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

// initializes purchased and selected player skins
global.StandardSkinPurchased = true;
global.NerdSkinPurchased = false;
global.HurtSkinPurchased = false;
global.SkeletonSkinPurchased = false;
global.CharacterSkin = CharSkin.standard;

// initializes selectable options for physical disabilities
global.ClosedCaptioningEnabled = false;
global.DirectionalSoundAidEnabled = false;
global.OneHandedModeEnabled = false;
global.LowReactivityEnabled = false;
global.BlindModeEnabled = false;

// initializes selectable options for mental disabilities
global.DyslexiaTextEnabled = false;
global.ObjectiveCompassDisabled = false;

// initializes selectable options for reduced risk-taking features
global.DisableCheckpoints = false;

// start game in fullscreen and set standard cursor to be invisible
window_set_fullscreen(true);
window_set_cursor(cr_none);

// progress to main menu
room_goto(TitleScreenRoom);