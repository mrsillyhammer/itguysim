///scr_trouble_ticket(entity)
/*
ds_grid_resize(PROBLEM_LIST,3,ds_grid_height(PROBLEM_LIST)+1);
ds_grid_set(PROBLEM_LIST,0,ds_grid_height(PROBLEM_LIST)-1,argument0);
ds_grid_set(PROBLEM_LIST,1,ds_grid_height(PROBLEM_LIST)-1,argument1);
ds_grid_set(PROBLEM_LIST,2,ds_grid_height(PROBLEM_LIST)-1,1);
*/
ds_list_add(PROBLEM_LIST,argument0);
