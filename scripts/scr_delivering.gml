///scr_delivering


if delivering=1 {
working=0;
printing=0;
   if instance_exists(myfax) {

      if distance_to_object(myfax) <= 30 {
  
  
        if invoice >=1 {
        
          invoice-=1
          sales+=1;
          sale_amt+=workvalue+mydata;
          scr_message("+$"+string(workvalue+mydata),c_lime);
          COMPANY_MONEY+=workvalue+mydata
        
        }
        
        if invoice <=0 {
        delivering=0;
        working=1;
        scr_workvalue();
        }
        
       
  
     }
     
     if distance_to_object(myfax) > 30 {
     scr_goto_fax();
     
     }

   }
 }
