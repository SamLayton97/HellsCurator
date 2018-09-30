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

// start game in fullscreen
window_set_fullscreen(true);

// progress to main menu
room_goto(TitleScreenRoom);