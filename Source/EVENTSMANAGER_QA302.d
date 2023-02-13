func void EVENTSMANAGER_QA302() {
    if ((LOG_GETSTATUS(MIS_QA302)) != (LOG_RUNNING)) {
        return;
    };
    if ((QA302_ROUTE_CAVE_MONSTERS) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, "PART2_PATH_68")) <= (2200)) || ((NPC_GETDISTTOWP(HERO, "PART9_CONNECTION_PART2_V2")) <= (2200))) {
            QA302_ROUTE_CAVE_MONSTERS = TRUE;
            B_LOGENTRY(TOPIC_QA302, LOG_QA302_ROUTE_CAVE_MONSTERS);
        };
    };
    if ((QA302_ROUTE_CAVE) == (FALSE)) {
        if (((((NPC_ISDEAD(YMINECRAWLER_QA304_01)) && (NPC_ISDEAD(YMINECRAWLER_QA304_02))) && (NPC_ISDEAD(YMINECRAWLER_QA304_03))) && (NPC_ISDEAD(YMINECRAWLER_QA304_04))) && (NPC_ISDEAD(YMINECRAWLER_QA304_05))) {
            if (((((NPC_ISDEAD(BEAR_QA302)) && (NPC_ISDEAD(GIANT_RAT_QA302_01))) && (NPC_ISDEAD(GIANT_RAT_QA302_02))) && (NPC_ISDEAD(GIANT_RAT_QA302_03))) && (NPC_ISDEAD(GIANT_RAT_QA302_04))) {
                QA302_ROUTE_CAVE = TRUE;
                B_LOGENTRY(TOPIC_QA302, LOG_QA302_ROUTE_CAVE);
            };
        };
    };
    if ((QA302_ROUTE_PATH) == (FALSE)) {
        if ((QA302_CLUECOUNTS) >= (4)) {
            QA302_ROUTE_PATH = TRUE;
            B_LOGENTRY(TOPIC_QA302, LOG_QA302_ROUTE_PATH);
        };
    };
    if (((QA302_ROUTE_CAVE) == (TRUE)) && ((QA302_ROUTE_PATH) == (TRUE))) {
        if ((QA302_ALLROUTESDONE) == (FALSE)) {
            QA302_ALLROUTESDONE = TRUE;
            B_LOGENTRY(TOPIC_QA302, LOG_QA302_ALLROUTESDONE);
        };
    };
    if ((QA302_FOLLOWCITIZEN) == (1)) {
        if (((NPC_GETDISTTONPC(HERO, NONE_13499_QA302_BANDIT)) <= (1500)) || (((NPC_GETDISTTONPC(SLD_1009_CARAMON, NONE_13499_QA302_BANDIT)) <= (1500)) && ((NPC_ISINSTATE(NONE_13499_QA302_BANDIT, 61599)) == (FALSE)))) {
            PRINTD("Idzie");
            QA302_FOLLOWCITIZEN = 2;
            B_STARTOTHERROUTINE(NONE_13499_QA302_BANDIT, "QA302_WALK_VOLKER");
            NPC_REFRESH(NONE_13499_QA302_BANDIT);
        };
    };
    if ((QA302_FOLLOWCITIZEN) == (2)) {
        if (((NPC_GETDISTTOWP(NONE_13499_QA302_BANDIT, "PARTM4_PATH_12")) <= (600)) && ((NPC_ISINSTATE(NONE_13499_QA302_BANDIT, 61599)) == (FALSE))) {
            PRINTD("Szuka nas");
            QA302_FOLLOWCITIZEN = 4;
            B_STARTOTHERROUTINE(NONE_13499_QA302_BANDIT, "QA302_SEARCH");
            NPC_REFRESH(NONE_13499_QA302_BANDIT);
            B_SAY(SLD_1009_CARAMON, SLD_1009_CARAMON, "$CARAMON_QA302_NOTICE");
        };
    };
    if (((QA302_FOLLOWCITIZEN) == (2)) || ((QA302_FOLLOWCITIZEN) == (4))) {
        if (((NPC_ISINSTATE(NONE_13499_QA302_BANDIT, 61599)) == (FALSE)) && ((NPC_ISINSTATE(SLD_1009_CARAMON, 61599)) == (FALSE))) {
            if (((NPC_GETDISTTONPC(HERO, NONE_13499_QA302_BANDIT)) <= (500)) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON, NONE_13499_QA302_BANDIT)) <= (500))) {
                if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_SLD)) {
                    QA302_ARAXOSARMOREQUIPED = TRUE;
                };
                PRINTD("Ucieka!");
                QA302_FOLLOWCITIZEN = 3;
                B_STARTOTHERROUTINE(NONE_13499_QA302_BANDIT, "QA302_FLEE_HARBOUR");
                NPC_REFRESH(NONE_13499_QA302_BANDIT);
                QA302_CARAMON_RTNCHECK = 5;
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_GERSTAND_FOLLOW_V2");
                NPC_REFRESH(SLD_1009_CARAMON);
                B_SAY(SLD_1009_CARAMON, SLD_1009_CARAMON, "$CARAMON_QA302_RunAway");
                QA302_ERNESTORTN();
                MDL_APPLYOVERLAYMDSTIMED(HERO, HUMANSSPRINTMDS, 50000);
                MDL_APPLYOVERLAYMDSTIMED(SLD_1009_CARAMON, HUMANSSPRINTMDS, 52000);
                MDL_APPLYOVERLAYMDSTIMED(NONE_13499_QA302_BANDIT, HUMANSSPRINTMDS, 60000);
            };
        };
    };
    if ((QA302_FOLLOWCITIZEN) == (3)) {
        if (((NPC_GETDISTTOWP(NONE_13499_QA302_BANDIT, "HARBOUR_PATH_195")) <= (600)) && ((NPC_ISINSTATE(NONE_13499_QA302_BANDIT, 61599)) == (FALSE))) {
            PRINTD("Ucieka dalej");
            QA302_FOLLOWCITIZEN = 5;
            B_STARTOTHERROUTINE(NONE_13499_QA302_BANDIT, "QA302_FLEE_FINAL");
            NPC_REFRESH(NONE_13499_QA302_BANDIT);
            QA302_PREPAREBANDITS();
        };
    };
    if ((QA302_BANDITS_CUTSCENEENABLE) == (1)) {
        if (((((NPC_ISINSTATE(NONE_13499_QA302_BANDIT, 61599)) == (FALSE)) && ((NPC_ISINSTATE(NONE_13496_QA302_BANDIT, 61599)) == (FALSE))) && ((NPC_ISINSTATE(SLD_1009_CARAMON, 61599)) == (FALSE))) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
            if ((NPC_GETDISTTONPC(NONE_13496_QA302_BANDIT, NONE_13499_QA302_BANDIT)) <= (800)) {
                if ((NPC_GETDISTTOWP(NONE_13499_QA302_BANDIT, "HARBOUR_PATH_256")) <= (1500)) {
                    QA302_BANDITS_CUTSCENEENABLE = 2;
                    HERO.AIVAR[4] = TRUE;
                    FF_APPLYONCEEXT(61445, 75, 4);
                };
            };
        };
    };
    if ((QA302_BANDITS_CUTSCENEENABLE) == (3)) {
        if (NPC_KNOWSINFO(HERO, 70348)) {
            if ((QA302_FINALFIGHT) == (0)) {
                if ((((((NONE_13496_QA302_BANDIT.ATTRIBUTE[0]) != (NONE_13496_QA302_BANDIT.ATTRIBUTE[1])) || ((NONE_13497_QA302_BANDIT.ATTRIBUTE[0]) != (NONE_13497_QA302_BANDIT.ATTRIBUTE[1]))) || ((NONE_13498_QA302_BANDIT.ATTRIBUTE[0]) != (NONE_13498_QA302_BANDIT.ATTRIBUTE[1]))) || ((NONE_13499_QA302_BANDIT.ATTRIBUTE[0]) != (NONE_13499_QA302_BANDIT.ATTRIBUTE[1]))) || ((NONE_13500_QA302_BANDIT.ATTRIBUTE[0]) != (NONE_13500_QA302_BANDIT.ATTRIBUTE[1]))) {
                    QA302_FINALFIGHT = 1;
                    QA302_FIGHTWITHBANDITS();
                };
            };
        };
    };
    if ((QA302_FINALFIGHT) == (1)) {
        if (((((NPC_ISDEAD(NONE_13496_QA302_BANDIT)) && (NPC_ISDEAD(NONE_13497_QA302_BANDIT))) && (NPC_ISDEAD(NONE_13498_QA302_BANDIT))) && (NPC_ISDEAD(NONE_13499_QA302_BANDIT))) && (NPC_ISDEAD(NONE_13500_QA302_BANDIT))) {
            if ((QA302_CARAMONHELP) == (1)) {
                B_STARTOTHERROUTINE(SLD_1009_CARAMON, START);
            };
            QA302_FINALFIGHT = 2;
            B_LOGENTRY(TOPIC_QA302, LOG_QA302_BANDITSDEAD);
        };
    };
}

