/// @description Used for initialization

// defines time / score variables based off difficulty
switch (global.GameDifficulty)
{
	case Difficulty.easy:
		global.MaxScorableSeconds = 230;
		global.PointsPerSecond = 50;
		break;
	case Difficulty.medium:
		global.MaxScorableSeconds = 190;
		global.PointsPerSecond = 60;
		break;
	case Difficulty.hard:
		global.MaxScorableSeconds = 160;
		global.PointsPerSecond = 85;
		break;
	default:
		global.MaxScorableSeconds = 190;
		global.PointsPerSecond = 60;
		break;
}

// initialize global player score
global.PlayerScore = 0;

// define global score modifiers
global.LevelRunTime = 0;
global.RocksUsed = 0;
global.SecretsFound = 0;
global.PerfectStealth = true;

// initialize / reset "save state" location
global.SaveStateX = 0;
global.SaveStateY = 0;

// initialize / reset saved player items
global.SavedRockCount = 0;
global.SavedHoldingBell = false;
global.SavedHoldingBook = false;

// initialize / reset level completion
global.SavedTutorialCompleted = false;
global.SavedGreenSignActive = false;
global.SavedPurpleSignActive = false;
global.SavedOrangeSignActive = false;

// initialize / reset time remaining and other score modifiers
global.SavedTimeRemaining = 0;
global.SavedRocksUsed = 0;
global.SavedPerfectStealth = true;

// initialize / reset variable tracking how player beats level
global.CompletionByEscape = false;

// after defining / resetting globals, move to demo room
room_goto(DemoRoom);