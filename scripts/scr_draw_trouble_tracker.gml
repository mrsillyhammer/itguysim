
var i;

for(var i=0;i<ds_grid_height(PROBLEM_LIST);i++;)
{
  
    if(ds_grid_get(PROBLEM_LIST,1,i)>0)
    {
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
    else
        {draw_text(400,400,"NONE")}
}

