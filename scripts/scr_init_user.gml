///scr_init_user

sex=irandom(1) // male or female (0,1)
scale=.35
age=irandom(60)+20;
intelligence=irandom(80)+20;
level=choose(0,1,2);
if level=0 {
salary=choose(14,15,16,17)
}
if level=1 {
salary=choose(20,22,24,26)
}

if level=2 {
salary=choose(40,45,40)
}
happiness=100;
mood=100;

connected=0; //connected to network

name=noone;
title=noone;

sales=0;
workrate=choose(.15,.25,.3,.5,.7,1)
working=1;
printing=0;
delivering=0;
complete_work=0;
complete_work_max=5;
invoice=0;
invoice_max=5;
workcount=0;
workvalue=noone;
scr_workvalue();

//title


title=scr_title(level);



//sprite
dir=1
face=noone;
face_sprite=noone;
hair_sprite=noone;
body_sprite=noone;
hair=noone;
body=noone;
head=irandom(sprite_get_number(spr_user_head));
body_type=0;

if sex=0 {
face_sprite=spr_user_face_male;
body_sprite=spr_body_male;
hair_sprite=spr_user_hair_male;
face=irandom(sprite_get_number(spr_user_face_male));
body=irandom(sprite_get_number(spr_body_male));
hair=irandom(sprite_get_number(spr_user_hair_male))

}

if sex=1 {
face_sprite=spr_user_face_female;
body_sprite=spr_body_female;
hair_sprite=spr_user_hair_female;
face=irandom(sprite_get_number(spr_user_face_female));
body=irandom(sprite_get_number(spr_body_female));
hair=irandom(sprite_get_number(spr_user_hair_female))

}

//start ai
alarm[0]=20
