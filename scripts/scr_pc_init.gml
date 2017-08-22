///scr_pc_init
//create a user for this desk/computer
//myuser=instance_create(obj_portal.x,obj_portal.y,obj_user_basic);
var ch=instance_nearest(x,y,obj_chair_parent);
myuser=instance_create(ch.x+16,ch.y,obj_user_basic);
myuser.mypc=id;
age=0;
status=1;
life=100;
connected=0;
display=0;
quality=choose(0,.2,.3);
powerusage=0;
