//scr_delete_ticket(id)
var entity=ds_list_find_index(PROBLEM_LIST, argument0);
if (entity) {
ds_list_delete(PROBLEM_LIST, entity);
}


