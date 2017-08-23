var type=choose(0,1,2);

if type=0 {
//user problem
var vi=irandom(instance_number(obj_user_basic));
var victim=instance_find(obj_user_basic,vi);
if instance_exists(victim) {
victim.account_status=choose(1,2);
scr_trouble_ticket(victim);
}

}

if type=1 {
//printer problem
var vi=irandom(instance_number(obj_printer_big));
var victim=instance_find(obj_printer_big,vi);
if instance_exists(victim) {
victim.status=choose(5,6);
scr_trouble_ticket(victim);
}
}

if type=2 {
var which=choose(obj_desk_front,obj_desk_back);
//computer problem
var vi=irandom(instance_number(which));
var victim=instance_find(which,vi);
if instance_exists(victim) {
victim.status=2;
scr_trouble_ticket(victim);
}
}
