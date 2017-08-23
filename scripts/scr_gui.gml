///scr_gui
draw_set_font(fn_gui_16);
/*
draw_text_gui(0,0,"Equipment")

draw_text_gui(0,25,"Computers: "+string(COMPUTERS))
draw_text_gui(0,45,"Small Printers: "+string(PRINTERS_SMALL))
draw_text_gui(0,65,"Big Printers: "+string(PRINTERS_LARGE))
draw_text_gui(0,85,"Wireless: "+string(WIRELESS))
draw_text_gui(0,105,"Servers: "+string(SERVERS))

draw_text_gui(0,135,"Users")
draw_text_gui(0,160,"Total Users: "+string(USERS))

draw_text_gui(0,195,"Power")
draw_text_gui(0,230,"Generators: "+string(GENERATORS))
draw_text_gui(0,250,string(USEDPOWER)+"/"+string(MAXPOWER));

draw_text_gui(0,280,"STORAGE")
draw_text_gui(0,300,string(floor(STORAGE_USED))+"/"+string(floor(STORAGE_AVAILABLE/1000))+"tb")

draw_text_gui(0,330,"IT Budget")
draw_text_gui(0,360,"$"+string(BUDGET))

draw_text_gui(0,390,"Company Budget")
draw_text_gui(0,420,"$"+string(COMPANY_MONEY))
*/


draw_text_gui(10,10,"IT Budget: $"+string(BUDGET)+" (+"+string(COMPANY_MONEY*.1)+" p/H)")


draw_text_gui(10,40,"Company Budget: $"+string(COMPANY_MONEY))

draw_text_gui(10,60,"PowerBill: -$"+string(POWERBILL))
//clock

draw_text_gui(view_wport-200,30,"Autopilot:")
draw_set_color(c_lime);
if AUTOPILOT==1 {draw_text_gui(view_wport-100,30,"Enabled")}
draw_set_color(c_red);
if AUTOPILOT==0 {draw_text_gui(view_wport-100,30,"disabled")}
draw_set_color(c_white);

draw_storage_circular(50,190,30,0,STORAGE_USED,spr_data)
draw_text(28,180,(floor(STORAGE_USED)))
draw_text_gui(view_wport-200,10,"Day: "+string(DAY)+"   "+"   "+string(string_add_zeros(HOUR,2))+":"+string(string_add_zeros(MINUTE,2))+":"+string(string_add_zeros(SECOND,2)))
