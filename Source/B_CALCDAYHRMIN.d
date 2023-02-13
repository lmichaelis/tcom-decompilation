func int B_CALCDAYHRMIN(var int DY, var int HR, var int MIN) {
    var int RET;
    if ((MIN) >= (60)) {
        return B_CALCDAYHRMIN(DY, (HR) + (1), (MIN) - (60));
    };
    if ((HR) >= (24)) {
        return B_CALCDAYHRMIN((DY) + (1), (HR) - (24), MIN);
    };
    DY = (DY) * (10000);
    HR = (HR) * (100);
    RET = ((DY) + (HR)) + (MIN);
    return RET;
}

func int WLD_GETMINUTE() {
    var int MINUTE;
    MINUTE = WLD_FINDMINUTE(WLD_GETHOUR(), 0, 59);
    return MINUTE;
}

func int WLD_GETTIME() {
    var int RET;
    var int D;
    var int M;
    var int H;
    H = WLD_GETHOUR();
    M = WLD_GETMINUTE();
    D = WLD_GETDAY();
    RET = (((D) * (10000)) + ((H) * (100))) + (M);
    return RET;
}

func void WLD_ADDTIME(var int DAYS_ADD, var int HOURS_ADD, var int MINUTES_ADD) {
    var int MINUTES;
    var int HOUR;
    var int CALC;
    CALC = B_CALCDAYHRMIN(DAYS_ADD, HOURS_ADD, MINUTES_ADD);
    DAYS_ADD = (CALC) / (10000);
    HOURS_ADD = (CALC) % (10000);
    HOURS_ADD = (HOURS_ADD) / (100);
    MINUTES_ADD = (CALC) % (100);
    HOUR = ((WLD_GETHOUR()) + (HOURS_ADD)) + ((24) * (DAYS_ADD));
    MINUTES = WLD_GETMINUTE();
    HOUR = (HOUR) + (((MINUTES) + (MINUTES_ADD)) / (60));
    MINUTES = ((MINUTES) + (MINUTES_ADD)) % (60);
    WLD_SETTIME(HOUR, MINUTES);
}

func void B_PRINTTIME(var int DHHMM, var int X, var int Y, var int T) {
    var string MIN;
    var string PRNT;
    var string HR;
    var int MINUTE;
    var string DY;
    var int HOUR;
    var int CURDAY;
    CURDAY = (DHHMM) / (10000);
    HOUR = (DHHMM) % (10000);
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

