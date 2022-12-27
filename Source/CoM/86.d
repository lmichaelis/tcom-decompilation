func int B_CALCDAYHRMIN(var int DY, var int HR, var int MIN) {
    if ((MIN) >= (60)) {
        return B_CALCDAYHRMIN(DY, (HR) + (1), (MIN) - (60));
    };
    if ((HR) >= (24)) {
        return B_CALCDAYHRMIN((DY) + (1), (HR) - (24), MIN);
    };
    DY = (DY) * (0x2710);
    HR = (HR) * (100);
    RET = ((DY) + (HR)) + (MIN);
    return RET;
}

var int B_CALCDAYHRMIN.RET = 0;
func int WLD_FINDMINUTE(var int HOUR, var int FROM, var int TILL) {
    if ((FROM) >= (60)) {
        return -(1);
    };
    if (WLD_ISTIME(HOUR, 59, (HOUR) + (1), 10)) {
        return 59;
    };
    if (WLD_ISTIME(HOUR, 58, (HOUR) + (1), 10)) {
        return 58;
    };
    if (WLD_ISTIME(HOUR, 57, (HOUR) + (1), 10)) {
        return 57;
    };
    if (WLD_ISTIME(HOUR, (FROM) + (1), HOUR, TILL)) {
        return WLD_FINDMINUTE(HOUR, (FROM) + (1), TILL);
    };
    return FROM;
}

func int WLD_FINDHOUR(var int FROM, var int TILL) {
    if (WLD_ISTIME(23, 0, 0, 0)) {
        return 23;
    };
    if (WLD_ISTIME(22, 55, 23, 10)) {
        return 22;
    };
    if ((FROM) >= (24)) {
        return -(1);
    };
    if (WLD_ISTIME((FROM) + (1), 0, TILL, 0)) {
        return WLD_FINDHOUR((FROM) + (1), TILL);
    };
    return FROM;
}

func int WLD_GETHOUR() {
    HOUR = WLD_FINDHOUR(0, 23);
    return HOUR;
}

var int WLD_GETHOUR.HOUR = 0;
func int WLD_GETMINUTE() {
    MINUTE = WLD_FINDMINUTE(WLD_GETHOUR(), 0, 59);
    return MINUTE;
}

var int WLD_GETMINUTE.MINUTE = 0;
func int WLD_GETTIME() {
    H = WLD_GETHOUR();
    M = WLD_GETMINUTE();
    D = WLD_GETDAY();
    RET = (((D) * (0x2710)) + ((H) * (100))) + (M);
    return RET;
}

var int WLD_GETTIME.D = 0;
var int WLD_GETTIME.H = 0;
var int WLD_GETTIME.M = 0;
var int WLD_GETTIME.RET = 0;
func void WLD_ADDTIME(var int DAYS_ADD, var int HOURS_ADD, var int MINUTES_ADD) {
    CALC = B_CALCDAYHRMIN(DAYS_ADD, HOURS_ADD, MINUTES_ADD);
    DAYS_ADD = (CALC) / (0x2710);
    HOURS_ADD = (CALC) % (0x2710);
    HOURS_ADD = (HOURS_ADD) / (100);
    MINUTES_ADD = (CALC) % (100);
    HOUR = ((WLD_GETHOUR()) + (HOURS_ADD)) + ((24) * (DAYS_ADD));
    MINUTES = WLD_GETMINUTE();
    HOUR = (HOUR) + (((MINUTES) + (MINUTES_ADD)) / (60));
    MINUTES = ((MINUTES) + (MINUTES_ADD)) % (60);
    WLD_SETTIME(HOUR, MINUTES);
}

var int WLD_ADDTIME.CALC = 0;
var int WLD_ADDTIME.HOUR = 0;
var int WLD_ADDTIME.MINUTES = 0;
func void WLD_SUBTIME(var int DAYS_SUB, var int HOURS_SUB, var int MINUTES_SUB) {
    CALC = B_CALCDAYHRMIN(DAYS_SUB, HOURS_SUB, MINUTES_SUB);
    DAYS_SUB = (CALC) / (0x2710);
    HOURS_SUB = (CALC) % (0x2710);
    HOURS_SUB = (HOURS_SUB) / (100);
    MINUTES_SUB = (CALC) % (100);
    HOUR = ((WLD_GETHOUR()) - (HOURS_SUB)) - ((24) * (DAYS_SUB));
    MINUTES = WLD_GETMINUTE();
    if ((MINUTES) >= (MINUTES_SUB)) {
        MINUTES = (MINUTES) - (MINUTES_SUB);
    };
    HOUR = (HOUR) - (1);
    MINUTES = (60) - ((MINUTES_SUB) - (MINUTES));
    WLD_SETTIME(HOUR, MINUTES);
}

var int WLD_SUBTIME.CALC = 0;
var int WLD_SUBTIME.HOUR = 0;
var int WLD_SUBTIME.MINUTES = 0;
func int WLD_GETTIMEPLUS(var int DAYS_ADD, var int HOURS_ADD, var int MINUTES_ADD) {
    CALC = B_CALCDAYHRMIN(DAYS_ADD, HOURS_ADD, MINUTES_ADD);
    DAYS_ADD = (CALC) / (0x2710);
    HOURS_ADD = (CALC) % (0x2710);
    HOURS_ADD = (HOURS_ADD) / (100);
    MINUTES_ADD = (CALC) % (100);
    NEWDAY = (WLD_GETDAY()) + (DAYS_ADD);
    HOUR = (WLD_GETHOUR()) + (HOURS_ADD);
    MINUTES = WLD_GETMINUTE();
    HOUR = (HOUR) + (((MINUTES) + (MINUTES_ADD)) / (60));
    NEWDAY = (NEWDAY) + ((HOUR) / (24));
    HOUR = (HOUR) % (24);
    MINUTES = ((MINUTES) + (MINUTES_ADD)) % (60);
    NEWDAY = (NEWDAY) * (0x2710);
    HOUR = (HOUR) * (100);
    RET = ((NEWDAY) + (HOUR)) + (MINUTES);
    return RET;
}

var int WLD_GETTIMEPLUS.CALC = 0;
var int WLD_GETTIMEPLUS.NEWDAY = 0;
var int WLD_GETTIMEPLUS.HOUR = 0;
var int WLD_GETTIMEPLUS.MINUTES = 0;
var int WLD_GETTIMEPLUS.RET = 0;
func int WLD_GETTIMESUB(var int DAYS_SUB, var int HOURS_SUB, var int MINUTES_SUB) {
    CALC = B_CALCDAYHRMIN(DAYS_SUB, HOURS_SUB, MINUTES_SUB);
    DAYS_SUB = (CALC) / (0x2710);
    HOURS_SUB = (CALC) % (0x2710);
    HOURS_SUB = (HOURS_SUB) / (100);
    MINUTES_SUB = (CALC) % (100);
    NEWDAY = (WLD_GETDAY()) - (DAYS_SUB);
    HOUR = (WLD_GETHOUR()) - (HOURS_SUB);
    MINUTES = WLD_GETMINUTE();
    if ((MINUTES) >= (MINUTES_SUB)) {
        MINUTES = (MINUTES) - (MINUTES_SUB);
    };
    HOUR = (HOUR) - (1);
    MINUTES = (60) - ((MINUTES_SUB) - (MINUTES));
    if ((HOUR) < (0)) {
        NEWDAY = (NEWDAY) - (1);
        HOUR = (24) + (HOUR);
    };
    NEWDAY = (NEWDAY) * (0x2710);
    HOUR = (HOUR) * (100);
    RET = ((NEWDAY) + (HOUR)) + (MINUTES);
    return RET;
}

var int WLD_GETTIMESUB.CALC = 0;
var int WLD_GETTIMESUB.NEWDAY = 0;
var int WLD_GETTIMESUB.HOUR = 0;
var int WLD_GETTIMESUB.MINUTES = 0;
var int WLD_GETTIMESUB.RET = 0;
func void B_PRINTTIME(var int DHHMM, var int X, var int Y, var int T) {
    CURDAY = (DHHMM) / (0x2710);
    HOUR = (DHHMM) % (0x2710);
    HOUR = (HOUR) / (100);
    MINUTE = (DHHMM) % (100);
    DY = INTTOSTRING(CURDAY);
    HR = INTTOSTRING(HOUR);
    MIN = INTTOSTRING(MINUTE);
    if ((HOUR) < (10)) {
        HR = CONCATSTRINGS("0", HR);
    };
    if ((MINUTE) < (10)) {
        MIN = CONCATSTRINGS("0", MIN);
    };
    PRNT = CONCATSTRINGS(DY, ". Tag - ");
    PRNT = CONCATSTRINGS(PRNT, HR);
    PRNT = CONCATSTRINGS(PRNT, ":");
    PRNT = CONCATSTRINGS(PRNT, MIN);
    PRINTSCREEN(PRNT, X, Y, FONT_SCREEN, T);
}

var int B_PRINTTIME.CURDAY = 0;
var int B_PRINTTIME.HOUR = 0;
var int B_PRINTTIME.MINUTE = 0;
var string B_PRINTTIME.PRNT = "";
var string B_PRINTTIME.DY = "";
var string B_PRINTTIME.HR = "";
var string B_PRINTTIME.MIN = "";
func int WLD_ISEXACTTIME(var int DHHMM) {
    if ((DHHMM) == (WLD_GETTIME())) {
        return TRUE;
    };
    return FALSE;
}

func void SCRIPT_TIME() {
    B_PRINTTIME(WLD_GETTIME(), 5, 5, 1);
    WLD_SENDTRIGGER("TRIGGER_TIME");
}

func int WLD_ISBEFORETIME(var int DHHMM) {
    if ((WLD_GETTIME()) >= (DHHMM)) {
        return FALSE;
    };
    return TRUE;
}

func int WLD_ISAFTERTIME(var int DHHMM) {
    if ((WLD_GETTIME()) <= (DHHMM)) {
        return FALSE;
    };
    return TRUE;
}

