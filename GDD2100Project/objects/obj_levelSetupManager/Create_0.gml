/// @description Used for initialization

// defines time / score variables based off difficulty
switch (global.GameDifficulty)
{
	case Difficulty.easy:
		global.MaxScorableSeconds = 200;
		global.PointsPerSecond = 60;
		break;
	case Difficulty.medium:
		global.MaxScorableSeconds = 160;
		global.PointsPerSecond = 75;
		break;
	case Difficulty.hard:
		global.MaxScorableSeconds = 120;
		global.PointsPerSecond = 100;
		break;
	default:
		global.MaxScorableSeconds = 160;
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

// after defining globals, move to demo room
room_goto(DemoRoom);