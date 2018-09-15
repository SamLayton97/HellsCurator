/// @description Called once per frame

// if rock reaches terminal point within certain tolerance
if ((x <= terminalX + 8 && x >= terminalX - 8) 
&& (y <= terminalY + 8 && y >= terminalY - 8))
{
	// land at point (i.e., destroy self)
	instance_destroy();
}