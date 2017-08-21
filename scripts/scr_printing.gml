///scr_printing


if printing=1 {
   if instance_exists(myprinter) {

      if distance_to_object(myprinter) <= 30 {
  
  
      if complete_work >= 1 && myprinter.paper >=1 && invoice < invoice_max
       {
     
        myprinter.paper-=1;
        complete_work-=1;
        invoice+=1;
     
        }
        
        if invoice < invoice_max && complete_work <=0 {
        printing=0;
        working=1;
        }
        
        if invoice >=invoice_max {
        
        printing=0;
        working=0;
        delivering=1;
        
        }
  
     }

   }
 }
