///scr_equipment_install(equipment)
var item=argument0;
 var wall = collision_point(mouse_x, mouse_y, obj_solid, true, true);
    if (instance_exists(wall)) {

    } else {

        instance_create(mouse_x, mouse_y, item);

        
    }
