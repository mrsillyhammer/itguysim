///scr_goto_printer
if instance_exists(myprinter) {


  var printerpath=scr_gogo(x,y,myprinter.x,myprinter.y,32,6,1,obj_solid,0)
  path_start(printerpath,myspd,0,1)


}
