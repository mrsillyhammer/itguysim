var c,p,f,u,w,s;


//computer issues
for (c=0; c<COMPUTERS; c++)

 {
 
   var comp=instance_find(obj_desk_parent,c)
   with (comp) {
   
   if status !=0 {
   ds_grid_resize(PROBLEM_LIST,ds_grid_width(PROBLEM_LIST),ds_grid_height(PROBLEM_LIST)+1);
ds_grid_set(PROBLEM_LIST,0,ds_grid_height(PROBLEM_LIST),id);
ds_grid_set(PROBLEM_LIST,1,ds_grid_height(PROBLEM_LIST),status);
   }
   
   }
 
 }
 
 for (p=0; p<PRINTERS_SMALL+PRINTERS_LARGE; p++)

 {
 
   var printer=instance_find(obj_printer_parent,p)
   with (printer) {
   
   if status !=1 
   {
   ds_grid_resize(PROBLEM_LIST,ds_grid_width(PROBLEM_LIST),ds_grid_height(PROBLEM_LIST)+1);
ds_grid_set(PROBLEM_LIST,0,ds_grid_height(PROBLEM_LIST),id);
ds_grid_set(PROBLEM_LIST,1,ds_grid_height(PROBLEM_LIST),status);
   }
   
   }
 
 }
 
 for (u=0; u<USERS; u++)

 {
 
   var user=instance_find(obj_user_basic,u)
   with (user) {
   
   if account_status !=0 {

   }
   
   }
 
 }
