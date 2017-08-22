///scr_power_bill

var pc,printers,wireless,fax,servers,building,modifier,powerbill;
modifier=80;
pc=COMPUTERS*modifier+(POWERUSED_PC*modifier);
printers=(PRINTERS_SMALL+PRINTERS_LARGE)*modifier+(POWERUSED_PRINTER_SMALL*modifier);
wireless=WIRELESS*modifier+(POWERUSED_WIRELESS*modifier);
building=USERS*(modifier*2);
servers=SERVERS*modifier+(POWERUSED_SERVER*modifier);
powerbill=pc+printers+wireless+building+servers;
COMPANY_MONEY-=powerbill
scr_message("POWERBILL -$"+string(powerbill),c_red)
