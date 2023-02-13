var int NOLOCATIONENTRYCHECK;
func void B_LOCATIONENTRYCHECK(var string THEME) {
    var int HAVENNOENTRY;
    var int CITYNOENTRY;
    if ((((LOG_GETSTATUS(MIS_Q201)) != (LOG_SUCCESS)) && ((Q201_SEWERSWAY) == (FALSE))) || (((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) && ((Q312_GATESCLOSED) == (TRUE)))) {
        if ((CITYNOENTRY) == (FALSE)) {
            if (STR_STARTSWITH(THEME, "HAR_")) {
                CITYNOENTRY = TRUE;
                CUTSCENE_START(92299);
            };
        };
    };
    if ((KAPITEL) < (3)) {
        if ((HAVENNOENTRY) == (FALSE)) {
            if (STR_STARTSWITH(THEME, "HAV_")) {
                HAVENNOENTRY = TRUE;
                CUTSCENE_START(92321);
            };
        };
    };
    if ((CITYNOENTRY) && (HAVENNOENTRY)) {
        NOLOCATIONENTRYCHECK = TRUE;
    };
}

