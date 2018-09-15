/// @description Used for initialization

// defines end-of-level scoring variables
global.PlayerScore = 0;
global.MaxScorableSeconds = 240;
global.PointsPerSecond = 70;

// after defining globals, move to demo room
room_goto(DemoRoom);