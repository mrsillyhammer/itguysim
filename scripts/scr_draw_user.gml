///scr_draw_user(hair,head,face)

//draw body
draw_sprite_ext(body_sprite,body,x,y,dir+body_type,1,0,c_white,1);
//draw head
draw_sprite_ext(spr_user_head,head,x,y,dir+body_type,1,0,c_white,1);

//draw face
draw_sprite_ext(face_sprite,face,x,y,dir+body_type,1,0,c_white,1);