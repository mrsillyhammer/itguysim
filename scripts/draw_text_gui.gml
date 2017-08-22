///draw_text_outline(x,y,text,text color,outline color)
// Draws colored text with a colored outline
var oldColor;
oldColor = draw_get_color();
draw_set_color(c_black);
draw_text(argument0+1,argument1+1,argument2);
draw_text(argument0-1,argument1-1,argument2);
draw_text(argument0,argument1+1,argument2);
draw_text(argument0+1,argument1,argument2);
draw_text(argument0,argument1-1,argument2);
draw_text(argument0-1,argument1,argument2);
draw_text(argument0-1,argument1+1,argument2);
draw_text(argument0+1,argument1-1,argument2);
draw_set_color(c_white);
draw_text(argument0,argument1,argument2);
draw_set_color(oldColor);
