//scr_working()

if working=1 {
   if instance_exists(mypc) {

      if distance_to_object(mypc) <= 3000 {
  
  
      if complete_work < complete_work_max
       {
     
        workcount+=workrate;
     
        }
        
        if complete_work >=complete_work_max {
        
        working=0; 
        printing=1;
        
        }
  
     }

   }
 }
