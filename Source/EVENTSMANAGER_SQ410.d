func void EVENTSMANAGER_SQ410() {
    if ((LOG_GETSTATUS(MIS_SQ410)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ410_ENDING_V1) == (1)) {
        if ((((NPC_GETDISTTOWP(HERO, "VILLAGE_SQ410_LUTZ")) <= (1000)) && ((NPC_GETDISTTOWP(BAU_702_VIKTOR, "VILLAGE_SQ410_VIKTOR")) <= (450))) && ((NPC_GETDISTTOWP(MIL_6318_LUTZ, "VILLAGE_SQ410_LUTZ")) <= (450))) {
            SQ410_ENDING_V1 = 2;
            FF_APPLYONCEEXT(62499, 75, 4);
            HERO.AIVAR[4] = TRUE;
        };
    };
    if ((SQ410_ENDING_V2) == (1)) {
        if (((NPC_GETDISTTOWP(MIL_6318_LUTZ, "PARTM2_PATH_69")) <= (1000)) && ((NPC_ISINSTATE(MIL_6318_LUTZ, 61599)) == (FALSE))) {
            SQ410_ENDING_V2 = 2;
            B_STARTOTHERROUTINE(MIL_6318_LUTZ, START);
            NPC_REFRESH(MIL_6318_LUTZ);
            PRINTD("RTN");
        };
    };
}

