
var pc,printers,wireless,fax,servers,building,modifier,powerbill,i;
modifier=80;
pc=0;
for (i=0; i<COMPUTERS; i++)
 {
 var thpc=instance_find(obj_desk_parent,i);
 var ss=thpc.powerusage+modifier;
 pc+=ss
 }
//pc=COMPUTERS*modifier+(POWERUSED_PC*modifier);
printers=(PRINTERS_SMALL+PRINTERS_LARGE)*modifier+(POWERUSED_PRINTER_SMALL*modifier);
wireless=WIRELESS*modifier+(POWERUSED_WIRELESS*modifier);
building=USERS*(modifier*2);
servers=SERVERS*modifier+(POWERUSED_SERVER*modifier);
powerbill=pc+printers+wireless+building+servers;
return powerbill;
