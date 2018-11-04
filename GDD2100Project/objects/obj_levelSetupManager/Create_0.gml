/// @description Used for initialization

// defines time / score variables based off difficulty
switch (global.GameDifficulty)
{
	case Difficulty.easy:
		global.MaxScorableSeconds = 220;
		global.PointsPerSecond = 60;
		break;
	case Difficulty.medium:
		global.MaxScorableSeconds = 180;
		global.PointsPerSecond = 75;
		break;
	case Difficulty.hard:
		global.MaxScorableSeconds = 145;
		global.PointsPerSecond = 100;
		break;
	default:
		global.MaxScorableSeconds = 180;
		global.PointsPerSecond = 63;
		break;
}

// initializes global player score
global.PlayerScore = 0;

// defines global score modifiers
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

// after defining / resetting globals, move to demo room
room_goto(DemoRoom);