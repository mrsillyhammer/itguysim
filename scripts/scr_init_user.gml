///scr_init_user

sex=irandom(1) // male or female (0,1)

age=irandom(60)+20;
intelligence=irandom(80)+20;
level=choose(0,1,2);
happiness=100;
mood=100;

connected=0; //connected to network

name=noone;
title=noone;

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
body_type=choose(-.75,.75,0,-.5,.5,-.25,.25);

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
