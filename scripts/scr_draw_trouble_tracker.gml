
var i;

for(var i=0;i<ds_grid_height(PROBLEM_LIST);i++)
{
  
    if(ds_grid_get(PROBLEM_LIST,1,i)>0)
    {
    var object=ds_grid_get(PROBLEM_LIST,0,i).object_index;
      var calling;
    var problem=ds_grid_get(PROBLEM_LIST,1,i);
    if object=obj_user_basic {
    draw_text(300,300+16*i,object.first_name)
    }
       // draw_set_halign(fa_left);
        //draw_text(300,300+16*i,ds_grid_get(PROBLEM_LIST,0,i))
        //draw_set_halign(fa_right);
        //draw_text(400,400+16*i,ds_grid_get(PROBLEM_LIST,1,i))
    }
    else
        {draw_text(400,400,"NONE")}
}

