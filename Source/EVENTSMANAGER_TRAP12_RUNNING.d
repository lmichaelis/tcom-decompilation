func void EVENTSMANAGER_TRAP12_RUNNING() {
    if (NPC_KNOWSINFO(HERO, 87544)) {
        if (((NPC_GETDISTTOWP(BAU_13324_SMOKER, "PART12_PATH_94")) <= (RNG_RADIUS_CLOSE)) && ((TRAP20_SMOKER1_RTN) == (FALSE))) {
            PRINTD("Palacz 1 zmieni³ rutynê");
            B_STARTOTHERROUTINE(BAU_13324_SMOKER, "SMOKE");
            TRAP20_SMOKER1_RTN = TRUE;
        };
        if (((NPC_GETDISTTOWP(BAU_13323_SMOKER, "PART10_PATH_03")) <= (RNG_RADIUS_CLOSE)) && ((TRAP20_SMOKER2_RTN) == (FALSE))) {
            PRINTD("Palacz 2 zmieni³ rutynê");
            B_STARTOTHERROUTINE(BAU_13323_SMOKER, "SMOKE");
            TRAP20_SMOKER2_RTN = TRUE;
        };
        if (((TRAP20_VANISH1) == (FALSE)) || ((TRAP20_VANISH2) == (FALSE))) {
            if (((NPC_GETDISTTONPC(HERO, BAU_13323_SMOKER)) >= (RNG_RADIUS_VERYFAR)) && ((TRAP20_VANISH1) == (FALSE))) {
                PRINTD("Palacz 1 uciek³");
                B_STARTOTHERROUTINE(BAU_13323_SMOKER, TOT);
                B_REMOVENPC(57736);
                TRAP20_VANISH1 = TRUE;
            };
            if (((NPC_GETDISTTONPC(HERO, BAU_13324_SMOKER)) >= (RNG_RADIUS_VERYFAR)) && ((TRAP20_VANISH2) == (FALSE))) {
                PRINTD("Palacz 2 uciek³");
                B_STARTOTHERROUTINE(BAU_13324_SMOKER, TOT);
                B_REMOVENPC(57741);
                TRAP20_VANISH2 = TRUE;
            };
        };
    };
}

