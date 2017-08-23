//scr_working()

if working=1 {
   if instance_exists(mypc) {

      if distance_to_object(mypc) <= 30 && mypc.connected=1 && mypc.status ==1 && STORAGE_USED < STORAGE_AVAILABLE && account_status=0{
  
  
      if complete_work < complete_work_max
       {
      STORAGE_USED+=SERVER_USE_MOD
      mydata+=SERVER_USE_MOD
        workcount+=workrate+mypc.quality;
        var breakchance=irandom(100);
        if breakchance >=99 {
        mypc.life-=(.5-mypc.quality)
        }
        }
        
        if complete_work >=complete_work_max {
        
        working=0; 
        printing=1;
        
        }
  
     }
     
     if distance_to_object(mypc) > 30 {
     scr_goto_pc();
     }

   }
 }
