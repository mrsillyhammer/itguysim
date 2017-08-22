///scr_delivering


if delivering=1 {
working=0;
printing=0;
   if instance_exists(myfax) {

      if distance_to_object(myfax) <= 30000 {
  
  
        if invoice >=1 {
        
          invoice-=1
          sales+=workvalue;
          scr_message("+$"+string(workvalue),c_lime);
          COMPANY_MONEY+=workvalue
        
        }
        
        if invoice <=0 {
        delivering=0;
        working=1;
        scr_workvalue();
        }
        
       
  
     }

   }
 }
