var i;
if ds_list_size(PROBLEM_LIST) >=1 {
for (i=0; i<ds_list_size(PROBLEM_LIST); i++)

 { 
 if ds_list_find_value(PROBLEM_LIST,i) !="fart" {
 var object = ds_list_find_value(PROBLEM_LIST,i)//.object_index;
 //draw box
     draw_set_color(make_color_rgb(194,228,238))
    draw_rectangle(800,100+110*i,1200,200+110*i,0);
    draw_set_color(make_color_rgb(97,97,97)); 
    draw_set_font(fn_gui_20)
    
 

 
 
 //if user
   if object.object_index=obj_user_basic 
   {
     var fname=object.first_name;
     var lname=object.last_name;
     var title=object.title;
     var age=object.age;
     var status=object.account_status;
     
     //draw_status
     if status=1 {
    draw_text(810,105+110*i,"Account Locked")
    }
     if status=2 {
    draw_text(810,105+110*i,"Forgot Password")
    }
    //draw name
     draw_set_font(fn_gui_16)
    draw_text(810,126+110*i,string(fname)+" "+string(lname)+", "+string(age))
   //user title
    draw_text(810,146+110*i,string(title))
    
   //close button
    draw_sprite(spr_close_but,0,1205,98+110*i)
    
if guix >1202 and guiy >94+110*i and guix <1215 and guiy <112+110*i and mouse_check_button_pressed (mb_left)
{
scr_delete_ticket(object)
audio_play_sound(snd_close_menu,5,0);
}
    
    
     //make clickable  
       
    if guix >798 and guiy >105+110*i and guix <1200 and guiy <105+100+110*i and mouse_check_button_pressed (mb_left)
{
if instance_exists(obj_user_detail) {with (obj_user_detail) {instance_destroy();}}
object.alarm[1]=1;
}
   
   }
   
   
    //if printer
   if object.object_index=obj_printer_big
   {
    
     var age=object.age;
     var life=object.life;
     var prints=object.pages_lifetime;
     var status=object.status;
     
     //draw_status
     if status=5 {
    draw_text(810,105+110*i,"Printer Jammed")
    }
     if status=6 {
    draw_text(810,105+110*i,"Printer Malfunction")
    }
    //printer name
    draw_set_font(fn_gui_16)
    draw_text(810,126+110*i,"PR_"+string(object)+" "+string(age)+" days in service")
    draw_text(810,146+110*i,string(prints)+" Pages Printed ")
    draw_text(810,166+110*i,string(life)+"% overall health")

    
   //close button
    draw_sprite(spr_close_but,0,1205,98+110*i)
    
if guix >1202 and guiy >94+110*i and guix <1215 and guiy <112+110*i and mouse_check_button_pressed (mb_left)
{
scr_delete_ticket(object)
audio_play_sound(snd_close_menu,5,0);
}
    
    
     //make clickable  
       
    if guix >798 and guiy >105+110*i and guix <1200 and guiy <105+100+110*i and mouse_check_button_pressed (mb_left)
{
obj_control.x=object.x;
obj_control.y=object.y;
object.alarm[1]=1;
ZOOM=.4
}
   
   }
   
       //if pc
   if object.object_index=obj_desk_front or object.object_index=obj_desk_back
   {
    
     var age=object.age;
     var life=object.life;
     var connected=object.connected;
     var status=object.status;
     
     //draw_status
     if status=2 {
    draw_text(810,105+110*i,"OS Crashed")
    }

    //printer name
    draw_set_font(fn_gui_16)
    draw_text(810,126+110*i,"PC_"+string(object)+" "+string(age)+" days in service")
    draw_text(810,146+110*i,"Connection: "+string(connected))
    draw_text(810,166+110*i,string(life)+"% overall health")

    
   //close button
    draw_sprite(spr_close_but,0,1205,98+110*i)
    
if guix >1202 and guiy >94+110*i and guix <1215 and guiy <112+110*i and mouse_check_button_pressed (mb_left)
{
scr_delete_ticket(object)
audio_play_sound(snd_close_menu,5,0);
}
    
    
     //make clickable  
       
    if guix >798 and guiy >105+110*i and guix <1200 and guiy <105+100+110*i and mouse_check_button_pressed (mb_left)
{
obj_control.x=object.x;
obj_control.y=object.y;
object.alarm[1]=1;
ZOOM=.4
}
   
   }


 
}

/*
var i;

for(var i=0;i<ds_grid_height(PROBLEM_LIST);i++;)
{
  
    if(ds_grid_get(PROBLEM_LIST,1,i)>0)
    {  
        var state=ds_grid_get(PROBLEM_LIST,2,i);
      if state !=99 {
    var object=ds_grid_get(PROBLEM_LIST,0,i).object_index;
      var calling;
    var problem=ds_grid_get(PROBLEM_LIST,1,i);


    //user problems
    if object=obj_user_basic {
    draw_set_color(make_color_rgb(194,228,238))
    draw_rectangle(800,100+110*i,1200,200+110*i,0);
    draw_set_color(make_color_rgb(97,97,97));
// draw problem    
draw_set_font(fn_gui_20)
    if problem=1
    {
    draw_text(810,105+110*i,"Account Locked")
    draw_sprite(spr_account_lock,0,1200,105+110*i)
    draw_sprite(spr_view_user,0,1200,105+32+110*i)
    //button presses
    //unlock account button
    if guix >810 and guiy >105+110*i and guix <1227 and guiy <105+32+110*i and mouse_check_button_pressed (mb_left)
{
    var this=ds_grid_get(PROBLEM_LIST,0,i);
    if instance_exists(obj_user_detail) {with (obj_user_detail) {instance_destroy();}}
    this.alarm[1]=1;
    //this.account_status=0;
    //scr_delete_ticket(i)

}
    }
    if problem=2
    {
    draw_text(810,105+110*i,"Forgot Password")
    }
    
    //user name
    draw_set_font(fn_gui_16)
    draw_text(810,126+110*i,string(ds_grid_get(PROBLEM_LIST,0,i).first_name)+" "+string(ds_grid_get(PROBLEM_LIST,0,i).last_name)+", "+string(ds_grid_get(PROBLEM_LIST,0,i).age))
    //user title
    draw_text(810,146+110*i,string(ds_grid_get(PROBLEM_LIST,0,i).title))

    }
    
        if object=obj_printer_big {
    draw_set_color(make_color_rgb(194,228,238))
    draw_rectangle(800,100+110*i,1200,200+110*i,0);
    draw_set_color(make_color_rgb(97,97,97));
// draw problem    
draw_set_font(fn_gui_20)
    if problem=2
    {
    draw_text(810,105+110*i,"Printer Jammed")
    }
    if problem=3
    {
    draw_text(810,105+110*i,"Out of Ink")
    }
    
      if problem=4
    {
    draw_text(810,105+110*i,"Out of Paper")
    }
        if problem=5
    {
    draw_text(810,105+110*i,"Power Unplugged")
    }
    
      if problem=6
    {
    draw_text(810,105+110*i,"PC Load Letter")
    }
    
    //printer name
    draw_set_font(fn_gui_16)
    draw_text(810,126+110*i,"PR_"+string(ds_grid_get(PROBLEM_LIST,0,i))+" "+string(ds_grid_get(PROBLEM_LIST,0,i).age)+" days in service")
    draw_text(810,146+110*i,string(ds_grid_get(PROBLEM_LIST,0,i).pages_lifetime)+" Pages Printed ")
    draw_text(810,166+110*i,string(ds_grid_get(PROBLEM_LIST,0,i).life)+"% overall health")


    }
    
    
       // draw_set_halign(fa_left);
        //draw_text(300,300+16*i,ds_grid_get(PROBLEM_LIST,0,i))
        //draw_set_halign(fa_right);
        //draw_text(400,400+16*i,ds_grid_get(PROBLEM_LIST,1,i))
    }
    }
    else
        {draw_text(400,400,"NONE")}
}
*/
}
}
