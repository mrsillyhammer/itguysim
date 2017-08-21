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

globalvar SHOWWIFI;
SHOWWIFI=0;
globalvar SHOWPATHS;
globalvar SHOWNAMES;
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
BUDGET=10000;


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
SERVER_USE_MOD=.000001;

//wireless
globalvar WIRELESS_BASE; //wireless base range
WIRELESS_BASE=300;


