func void EVENTSMANAGER_SQ202() {
    if ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) {
        if (((LOG_GETSTATUS(MIS_Q201)) == (LOG_SUCCESS)) && ((SQ202_FAILEDQUEST) == (FALSE))) {
            B_LOGENTRY(TOPIC_SQ202, LOG_SQ202_FAILED_V3);
            LOG_SETSTATUS(_@(MIS_SQ202), TOPIC_SQ202, LOG_FAILED);
            SQ202_EXCHANGEGOODS();
            SQ202_FAILEDQUEST = TRUE;
            B_STARTOTHERROUTINE(BAU_11012_FARMER, START);
            B_STARTOTHERROUTINE(MIL_707_HARRY, START);
            B_REMOVENPC(57692);
            SQ202_SPAWNBANDITS();
        };
        if ((SQ202_FARMERKNOWFREDRIK) == (TRUE)) {
            SQ202_FARMERKNOWFREDRIK = 2;
            B_STARTOTHERROUTINE(NONE_6252_FREDRIK, TOT);
            PRINTD("Fredrik spierdoli³ z Silbach!");
            WLD_INSERTITEM(37199, "FP_FREDRIKITEMS_01");
            WLD_INSERTITEM(34737, "FP_FREDRIKITEMS_02");
        } else if ((SQ202_FARMERKNOWFREDRIK) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "VILLAGE_PUB_04")) <= (500)) {
                B_LOGENTRY(TOPIC_SQ202, LOG_SQ202_NOFREDRIK);
                SQ202_FARMERKNOWFREDRIK = 3;
            };
        };
    };
    if (((LOG_GETSTATUS(MIS_SQ202)) == (LOG_SUCCESS)) || ((LOG_GETSTATUS(MIS_SQ202)) == (LOG_FAILED))) {
        if (((SQ202_FREDRIKGOHOME) == (TRUE)) && ((SQ202_FREDRIKGOHOME_DAY) <= ((WLD_GETDAY()) - (1)))) {
            if ((NPC_GETDISTTONPC(HERO, NONE_6252_FREDRIK)) >= (1200)) {
                B_STARTOTHERROUTINE(NONE_6252_FREDRIK, TOT);
                PRINTD("Petra wyparowa³a z tego œwiata!");
                SQ202_FREDRIKGOHOME = 2;
            };
        };
    };
}

