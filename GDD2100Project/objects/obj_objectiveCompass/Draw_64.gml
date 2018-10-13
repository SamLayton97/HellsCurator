/// @description Draws compass elements to GUI

// draw static compass background
draw_sprite(spr_compassBGR, 0, drawX, drawY);

// draw compass point at appropriate angle
draw_sprite_ext(spr_objectiveCompass, 0, drawX, drawY, 1, 1, drawAngle, -1, 1);