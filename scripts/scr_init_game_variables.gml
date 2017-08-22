///init globals

//view stuff
globalvar VIEWSPEED;  // speed of view moveing
globalvar ZOOM; //view zoom
ZOOM=1
VIEWSPEED=10;
old_bw=0;
old_bh=0;


ta5=room_speed/4;
alarm[5]=ta5;

mode=1;

texture_set_interpolation(false);
//gui stuff

globalvar mouseover;
mouseover=0;
globalvar SHOWWIFI;
SHOWWIFI=0;
globalvar SHOWPATHS;
SHOWPATHS=0;
globalvar SHOWNAMES;
SHOWNAMES=0;
globalvar SHOWPC;
SHOWPC=0;
globalvar SHOWPCLINES;
SHOWPCLINES=0;
globalvar SHOWPRINTERS;
SHOWPRINTERS=0;

//base stuff
globalvar COMPANY; //company name
COMPANY="BUTT's N STUFF";
globalvar PLAYER; //playername
PLAYER="Holden McRotch";
globalvar PLAYER_MONEY;
PLAYER_MONEY=25000;




//gameplay

//budget
globalvar BUDGET;// money
BUDGET=2000;
globalvar COMPANY_MONEY;
COMPANY_MONEY=10000;


//power
globalvar GENERATORS; //number of generators
GENERATORS=0;
globalvar MAXPOWER; // building max power
MAXPOWER=100;
globalvar USEDPOWER; // power being used
USEDPOWER=0;
globalvar POWERUSED_PC; //power used by each pc
POWERUSED_PC=2;
globalvar POWERUSED_PRINTER_SMALL; //power used by each small printer
POWERUSED_PRINTER_SMALL=2;
globalvar POWERUSED_PRINTER_LARGE; //power used by each large printer
POWERUSED_PRINTER_LARGE=2;
globalvar POWERUSED_SERVER; //power used by server
POWERUSED_SERVER=10;
globalvar POWERUSED_WIRELESS;
POWERUSED_WIRELESS=1;



//users

globalvar USERS; //number of users
USERS=0;
globalvar HAPPINESS; //user happiness 
HAPPINESS=0;

//equipment
globalvar COMPUTERS; //number of computers
COMPUTERS=0;
globalvar PRINTERS_SMALL; //number of small printers
PRINTERS_SMALL=0;
globalvar PRINTERS_LARGE; //number of large printers
PRINTERS_LARGE=0;
globalvar WIRELESS; //number of wireless
WIRELESS=0;

//servers
globalvar SERVERS; //number of servers
globalvar STORAGE_PER_SERVER;
STORAGE_PER_SERVER=2000;
SERVERS=0;
globalvar STORAGE_AVAILABLE; //available storage
STORAGE_AVAILABLE=0;
globalvar STORAGE_USED; // used storage
STORAGE_USED=0;
globalvar SERVER_USE_MOD; // storage user by happy users
SERVER_USE_MOD=.00001;

//wireless
globalvar WIRELESS_BASE; //wireless base range
WIRELESS_BASE=300;

//COSTS

globalvar INK_COST;
INK_COST=1000;
globalvar PAPER_COST;
PAPER_COST=500;
globalvar PC_COST_LOW;
PC_COST_LOW=2500;
globalvar PC_COST_MED;
PC_COST_MED=5000;
globalvar PC_COST_HIGH;
PC_COST_HIGH=8000;
globalvar WIRELESS_COST;
WIRELESS_COST=10000;
globalvar PRINTER_LARGE_COST;
PRINTER_LARGE_COST=8000;
globalvar PRINTER_SMALL_COST;
PRINTER_SMALL_COST=1000;
globalvar FAX_COST;
FAX_COST=5000;


//time

globalvar SPEED;
SPEED=5;

globalvar HOUR;
HOUR=8;
globalvar MINUTE;
MINUTE=0;
globalvar SECOND;
SECOND=1
globalvar DAY;
DAY=1;
globalvar MONTH;
MONTH=1;
globalvar YEAR;
YEAR=0;



