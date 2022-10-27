var int NOLOCATIONENTRYCHECK = 0;
func void B_LOCATIONENTRYCHECK(var string THEME) {
    if ((((LOG_GETSTATUS(MIS_Q201)) != (LOG_SUCCESS)) && ((Q201_SEWERSWAY) == (FALSE))) || (((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) && ((Q312_GATESCLOSED) == (TRUE)))) {
        if ((CITYNOENTRY) == (FALSE)) {
            if (STR_STARTSWITH(THEME, "HAR_")) {
                CITYNOENTRY = TRUE;
                CUTSCENE_START(0x1688b);
            };
        };
    };
    if ((KAPITEL) < (3)) {
        if ((HAVENNOENTRY) == (FALSE)) {
            if (STR_STARTSWITH(THEME, "HAV_")) {
                HAVENNOENTRY = TRUE;
                CUTSCENE_START(0x168a1);
            };
        };
    };
    if ((CITYNOENTRY) && (HAVENNOENTRY)) {
        NOLOCATIONENTRYCHECK = TRUE;
    };
}

var int B_LOCATIONENTRYCHECK.CITYNOENTRY = 0;
var int B_LOCATIONENTRYCHECK.HAVENNOENTRY = 0;
