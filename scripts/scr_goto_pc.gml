///scr_goto_pc
if instance_exists(mypc) {

var nc=instance_nearest(mypc.x,mypc.y,obj_chair_parent);
  var pcpath=scr_gogo(x,y,nc.x,nc.y,32,6,1,obj_solid,0)
  path_start(pcpath,myspd,0,1)

}
