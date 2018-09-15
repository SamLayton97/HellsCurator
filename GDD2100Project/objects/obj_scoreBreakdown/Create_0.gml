/// @description Used for initialization

// save screen dimensions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);

// based on final score, calculate player's rank
playerRank = "";
if (global.PlayerScore >= 15000)
	playerRank = "S";
else if (global.PlayerScore >= 10000)
	playerRank = "A";
else if (global.PlayerScore >= 8000)
	playerRank = "B";
else if (global.PlayerScore >= 5000)
	playerRank = "C";
else
	playerRank = "D";