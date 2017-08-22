///scr_draw_user(hair,head,face)

//draw working bar

if workcount >0 {

draw_healthbar(x-32,y-32,x+32,y-29,workcount,c_black,c_green,c_green,0,1,1)

}

if complete_work >0 {
draw_text(x+34,y-29,complete_work)
}
if invoice >0 {
draw_text(x+34,y-25,invoice)
}

//draw body
draw_sprite_ext(body_sprite,body,x,y,dir+body_type,1,0,c_white,1);
//draw head
draw_sprite_ext(spr_user_head,head,x,y,dir+body_type,1,0,c_white,1);

//draw face
draw_sprite_ext(face_sprite,face,x,y,dir+body_type,1,0,c_white,1);
