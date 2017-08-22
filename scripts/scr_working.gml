//scr_working()

if working=1 {
   if instance_exists(mypc) {

      if distance_to_object(mypc) <= 3000 && mypc.connected=1 && mypc.status >0 {
  
  
      if complete_work < complete_work_max
       {
     
        workcount+=workrate+mypc.quality;
     
        }
        
        if complete_work >=complete_work_max {
        
        working=0; 
        printing=1;
        
        }
  
     }

   }
 }
