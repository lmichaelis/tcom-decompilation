func void EVENTSMANAGER_SQ116() {
    if ((LOG_GETSTATUS(MIS_SQ116)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ116_TAKEKURTGOLD) == (TRUE)) {
        if ((SQ116_FIRSTTIMEINVINEYARD) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_88")) <= (3500)) {
                SQ116_FIRSTTIMEINVINEYARD = TRUE;
                B_LOGENTRY(TOPIC_SQ116, LOG_SQ116_FIRSTTIMEINVINEYARD);
            };
        };
    };
    if ((SQ116_TERRYCUTSCENEENABLE) == (1)) {
        if (((NPC_GETDISTTOWP(HERO, "PART9_SQ116_CUTSCENE_DENNIS")) <= (3600)) && ((NPC_GETDISTTOWP(BAU_2242_DENNIS, "PART9_SQ116_CUTSCENE_DENNIS")) <= (3600))) {
            if ((!(NPC_ISINSTATE(HERO, 61599))) && ((NPC_ISINSTATE(BAU_2242_DENNIS, 61599)) == (FALSE))) {
                SQ116_TERRYCUTSCENEENABLE = 2;
                HERO.AIVAR[4] = TRUE;
                B_STARTOTHERROUTINE(BAU_2242_DENNIS, "SQ116_CUTSCENE");
                NPC_REFRESH(BAU_2242_DENNIS);
                FF_APPLYONCEEXT(62293, 75, 4);
            };
        };
    };
    if ((SQ116_UNABLECAMERA) == (1)) {
        if ((SQ116_TERRYEVENT) == (1)) {
            PRINTD("Event");
            SQ116_UNABLECAMERA = 2;
            FF_APPLYONCEEXT(62299, 75, 2);
        } else if ((SQ116_TERRYEVENT) == (2)) {
            PRINTD("Event");
            SQ116_UNABLECAMERA = 2;
            FF_APPLYONCEEXT(62295, 75, 2);
        };
    };
    if ((SQ116_GUMBERTCUTSCENE) == (1)) {
        PRINTD("Event");
        SQ116_GUMBERTCUTSCENE = 2;
        FF_APPLYONCEEXT(62303, 75, 6);
    };
    if ((SQ116_TERRYEVENT) == (2)) {
        if (NPC_ISINSTATE(BAU_2242_DENNIS, 61603)) {
            if ((SQ116_CLEANDENNISATTITUDE) == (0)) {
                SQ116_CLEANDENNISATTITUDE = 1;
                NPC_SETATTITUDE(BAU_2242_DENNIS, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(BAU_2242_DENNIS, ATT_NEUTRAL);
                BAU_2242_DENNIS.AIVAR[1] = CRIME_NONE;
                BAU_2242_DENNIS.AIVAR[0] = FIGHT_LOST;
                PRINTD("Clear Agro");
            };
        };
    };
    if ((SQ116_TERRYRUNAWAY) == (TRUE)) {
        if ((SQ116_REMOVETERRY) == (0)) {
            if (((NPC_GETDISTTONPC(BAU_2244_TERRY, HERO)) >= (5000)) || ((NPC_GETDISTTOWP(BAU_2244_TERRY, "PART1_PATH_20")) <= (500))) {
                SQ116_REMOVETERRY = 1;
                B_REMOVENPC(57066);
                PRINTD("Terry uciek³");
            };
        };
    };
    if ((SQ116_VOLKERGUARDTALK) == (1)) {
        if (((NPC_GETDISTTONPC(NONE_10016_VOLKERGUARD, HERO)) <= (700)) && ((NPC_ISINSTATE(NONE_10016_VOLKERGUARD, 61599)) == (FALSE))) {
            SQ116_VOLKERGUARDTALK = 2;
            NONE_10016_VOLKERGUARD.AIVAR[15] = TRUE;
            B_STARTOTHERROUTINE(NONE_10016_VOLKERGUARD, FOLLOW);
            NPC_REFRESH(NONE_10016_VOLKERGUARD);
        };
    };
}

