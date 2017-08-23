///scr_printing


if printing=1 {
working=0;
   if instance_exists(myprinter) {

      if distance_to_object(myprinter) <= 30 {
  
  
      if complete_work >= 1 && myprinter.paper >=1 && myprinter.has_ink=1 && invoice < invoice_max && myprinter.status=1
       {
       pages_printed+=1
       var c,m,b,py;
       c=random(.5);
       m=random(.5);
       b=random(.5);
       py=random(.5);
       //slow down printing
       var printgo=random(200);
       if printgo >=150 {
        myprinter.paper-=myprinter.quality;
        myprinter.pages_lifetime+=1;
        myprinter.c_ink-=c;
        myprinter.m_ink-=m;
        myprinter.b_ink-=b;
        myprinter.y_ink-=py;
        myprinter.life-=(myprinter.healthmod+(myprinter.age*.025))
        complete_work-=myprinter.quality;
        invoice+=myprinter.quality;
     }
        }
        
        if invoice >= invoice_max {
        printing=0;
        delivering=1;
        
        }
        
       
  
     }
     
     if distance_to_object(myprinter) > 30 {
     
     scr_goto_printer();
     }

   }
 }
