///scr_power_bill

var powerbill=scr_calculate_powerbill();
COMPANY_MONEY-=powerbill;
POWER_SPENT+=powerwill;
scr_message("POWERBILL -$"+string(powerbill),c_red)
