func void EVENTSMANAGER_INEXTREMOCONCERT() {
    var int INEXTREMO_STARTCONCERT;
    if ((INEXTREMO_CANPLAYCONCERT) == (FALSE)) {
        return;
    };
    if (WLD_ISTIME(18, 0, 21, 0)) {
        if ((INEXTREMO_STARTCONCERT) == (FALSE)) {
            INEXTREMO_STARTCONCERT = TRUE;
            PRINTD("Music Zone");
            ENABLEMUSICZONE("HARBOUR_INX", TRUE);
        };
    };
    if ((INEXTREMO_STARTCONCERT) == (TRUE)) {
        INEXTREMO_STARTCONCERT = FALSE;
        PRINTD("Disable Music Zone");
        ENABLEMUSICZONE("HARBOUR_INX", FALSE);
    };
}

