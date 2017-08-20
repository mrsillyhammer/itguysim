///scr_gui
draw_set_font(fn_gui_16);

draw_text(0,0,"Equipment")

draw_text(0,25,"Computers: "+string(COMPUTERS))
draw_text(0,45,"Small Printers: "+string(PRINTERS_SMALL))
draw_text(0,65,"Big Printers: "+string(PRINTERS_LARGE))
draw_text(0,85,"Wireless: "+string(WIRELESS))
draw_text(0,105,"Servers: "+string(SERVERS))

draw_text(0,135,"Users")
draw_text(0,160,"Total Users: "+string(USERS))

draw_text(0,195,"Power")
draw_text(0,230,"Generators: "+string(GENERATORS))
draw_text(0,250,string(USEDPOWER)+"/"+string(MAXPOWER));
