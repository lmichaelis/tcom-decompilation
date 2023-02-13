func void EVENTSMANAGER_SQ229() {
    if ((SQ229_START) == (FALSE)) {
        if (((LOG_GETSTATUS(MIS_Q206)) == (LOG_SUCCESS)) || ((HERO.GUILD) == (GIL_MIL))) {
            SQ229_START = TRUE;
            WLD_INSERTNPC(54475, "HARBOUR_PATH_449");
            PRINTD("Nevil czeka pod karczm¹");
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ229)) == (LOG_RUNNING)) {
        if ((SQ229_FISHERSATTACK) == (FALSE)) {
            if (((NPC_GETDISTTONPC(HERO, NONE_1003_LEONEL)) <= (RNG_RADIUS_CLOSE)) || ((NPC_GETDISTTONPC(HERO, NONE_6291_MARCO)) <= (RNG_RADIUS_CLOSE))) {
                B_LOGENTRY(TOPIC_SQ229, LOG_SQ229_MARCO);
                PRINTD("Marvin zobaczy³ ¿e rybacy s¹ agresywni");
                SQ229_FISHERSATTACK = TRUE;
            };
        };
        if ((SQ229_GOTWEED) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37205)) >= (1)) {
                if ((HERO.GUILD) == (GIL_MIL)) {
                    B_LOGENTRY(TOPIC_SQ229, LOG_SQ229_WEED_MIL);
                    PRINTD("Wpis do dziennika MIL");
                    SQ229_GOTWEED = TRUE;
                } else if ((HERO.GUILD) == (GIL_SLD)) {
                    B_LOGENTRY(TOPIC_SQ229, LOG_SQ229_WEED_SLD);
                    PRINTD("Wpis do dziennika SLD");
                    SQ229_GOTWEED = TRUE;
                } else {
                    B_LOGENTRY(TOPIC_SQ229, LOG_SQ229_WEED_NOGUILD);
                    PRINTD("Wpis do dziennika bez gildii");
                    SQ229_GOTWEED = TRUE;
                };
            };
        };
    };
}

