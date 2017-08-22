///scr_printing


if printing=1 {
working=0;
   if instance_exists(myprinter) {

      if distance_to_object(myprinter) <= 30000 {
  
  
      if complete_work >= 1 && myprinter.paper >=1 && myprinter.has_ink=1 && invoice < invoice_max
       {
       var c,m,b,py;
       c=random(1);
       m=random(1);
       b=random(1);
       py=random(1);
       
        myprinter.paper-=1;
        myprinter.pages_lifetime+=1;
        myprinter.c_ink-=c;
        myprinter.m_ink-=m;
        myprinter.b_ink-=b;
        myprinter.y_ink-=py;
        myprinter.life-=(myprinter.healthmod+(myprinter.age*.025))
        complete_work-=1;
        invoice+=1;
     
        }
        
        if invoice >= invoice_max {
        printing=0;
        delivering=1;
        
        }
        
       
  
     }

   }
 }
