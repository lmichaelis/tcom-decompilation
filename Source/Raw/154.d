func void B_PASSTIME(var int T) {
    PASSTIME_HOUR = WLD_GETTIMEHOUR();
    if (((PASSTIME_HOUR) + (T)) < (23)) {
        WLD_SETTIME((PASSTIME_HOUR) + (T), 0);
    };
    T = (T) + (24);
    WLD_SETTIME((PASSTIME_HOUR) + (T), 0);
}

var int B_PASSTIME.PASSTIME_HOUR = 0;
