/// @description Used for initialization

// defines global scoring variables
global.PlayerScore = 0;
global.MaxScorableSeconds = 240;
global.PointsPerSecond = 40;

// defines global score modifiers
global.LevelRunTime = 0;
global.RocksUsed = 0;
global.SecretsFound = 0;
global.PerfectStealth = true;

// after defining globals, move to demo room
room_goto(DemoRoom);