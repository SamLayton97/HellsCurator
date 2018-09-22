/// @description Draws Spectre UI elements to screen if appropriate

draw_self();

// if appropriate, draw agro radius
if (drawAgroRadius)
	draw_circle_color(x, y, immediateAgroRange, c_red, c_red, true);