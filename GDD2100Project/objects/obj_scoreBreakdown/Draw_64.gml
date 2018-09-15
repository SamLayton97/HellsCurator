/// @description Draw score breakdown to GUI

// set font and alignment of breakdown text
draw_set_font(font_scoreBreakdown);
draw_set_halign(fa_left);

// draw score breakdown
draw_text(screenWidth / 6, screenHeight / 4, 
	"Remaining Time: +" + string(global.LevelRunTime * global.PointsPerSecond) + " pts");
draw_text(screenWidth / 6, (3 * screenHeight) / 8, 
	"Rocks Used (" + string(global.RocksUsed) + "): -" + string(global.RocksUsed * 700) + " pts");
draw_text(screenWidth / 6, screenHeight / 2,
	"Secrets Found (" + string(global.SecretsFound) + "): +" + string(global.SecretsFound * 1000) + " pts");
if (global.PerfectStealth)
{
	draw_text(screenWidth / 6, (5 * screenHeight) / 8,
		"Perfect Stealth: +" + string(8000) + " pts");
}
else
{
	draw_text(screenWidth / 6, (5 * screenHeight) / 8,
		"Perfect Stealth (X): +" + string(0) + " pts");
}

// draw final score
draw_text(screenWidth / 6, (3 * screenHeight) / 4,
	"Score: " + string(global.PlayerScore) + " pts");

// draw rank
draw_text_color((3 * screenWidth) / 4.5, screenHeight / 2, "Rank: " + playerRank, rankColour, rankColour, rankColour, rankColour, 1);