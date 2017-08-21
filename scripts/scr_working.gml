//scr_working()

if working=1 {
   if instance_exists(mypc) {

      if distance_to_object(mypc) <= 30 {
  
  
      if complete_work < complete_work_max
       {
     
        workcount+=.01;
     
        }
        
        if complete_work >=complete_work_max {
        
        working=0; 
        printing=1;
        
        }
  
     }

   }
 }
