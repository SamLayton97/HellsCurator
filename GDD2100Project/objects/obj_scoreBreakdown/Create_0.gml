/// @description Used for initialization

// save screen dimensions
screenWidth = camera_get_view_width(0);
screenHeight = camera_get_view_height(0);

// based on final score, calculate player's rank
playerRank = "";
rankColour = c_white;
if (global.PlayerScore >= 15000)
{
	playerRank = "S";
	rankColour = c_aqua;
}
else if (global.PlayerScore >= 10000)
{
	playerRank = "A";
	rankColour = c_yellow;
}
else if (global.PlayerScore >= 8000)
{
	playerRank = "B";
	rankColour = c_silver;
}
else if (global.PlayerScore >= 5000)
{
	playerRank = "C";
	rankColour = c_olive;
}
else
	playerRank = "D";