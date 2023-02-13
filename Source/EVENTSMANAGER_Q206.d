func void EVENTSMANAGER_Q206() {
    var int Q206_FINBARWORKPLACE_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) {
        if ((Q206_MARVINISSPY) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "HARBOUR_TAVERN_06")) <= (1000)) && (NPC_KNOWSINFO(HERO, 70294))) {
                if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_SLD)) {
                    PRINTD("This Marvin is a Spy!");
                    Q206_MARVINISSPY = TRUE;
                };
            };
        };
        if ((Q206_FISHERMANLOGENTRY) == (FALSE)) {
            if ((NPC_KNOWSINFO(HERO, 70294)) && ((NPC_KNOWSINFO(HERO, 70297)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(HERO, "HARBOUR_TAVERN_38")) <= (350)) {
                    Q206_FISHERMANLOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_Q206, LOG_Q206_DRUNKFISHERMAN);
                };
            };
        };
        if (((Q206_KNOWSFINBAR) == (TRUE)) && ((Q206_FINBARCORPSELETTER_READ) == (FALSE))) {
            if ((Q206_FINBARWORKPLACE_LOGENTRY) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_219")) <= (350)) {
                    Q206_FINBARWORKPLACE_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_Q206, LOG_Q206_FINBARWORKPLACE);
                    B_SAY(HERO, HERO, "$MARVIN_ThinkingEmoji");
                };
            };
        };
        if (((Q206_FINBARCORPSELETTER_READ) == (TRUE)) || ((Q206_ANAISINFO) == (TRUE))) {
            if ((Q206_PREPAREPABLO) == (FALSE)) {
                Q206_PREPAREPABLO = TRUE;
                Q206_SPAWNPABLO();
            };
        };
        if ((Q206_FOUNDSTORAGE) == (FALSE)) {
            if (((Q206_FINBARCORPSELETTER_READ) == (TRUE)) || ((Q206_ANAISINFO) == (TRUE))) {
                if ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_199")) <= (500)) {
                    if (((Q206_FINBARCORPSELETTER_READ) == (TRUE)) && ((Q206_ANAISINFO) == (TRUE))) {
                        B_LOGENTRY(TOPIC_Q206, LOG_Q206_FOUNDSTORAGE_V3);
                        B_GIVEPLAYERXP(XP_Q206_GOODSPY_STORAGE);
                    } else if ((Q206_ANAISINFO) == (TRUE)) {
                        B_LOGENTRY(TOPIC_Q206, LOG_Q206_FOUNDSTORAGE_V1);
                    } else if ((Q206_FINBARCORPSELETTER_READ) == (TRUE)) {
                        B_LOGENTRY(TOPIC_Q206, LOG_Q206_FOUNDSTORAGE_V2);
                    };
                    Q206_FOUNDSTORAGE = TRUE;
                };
            };
        } else if ((Q206_FOUNDSTORAGE) == (TRUE)) {
            if ((NPC_GETDISTTONPC(HERO, NONE_7004_PABLO)) <= (200)) {
                Q206_FOUNDSTORAGE = 2;
                FF_APPLYONCEEXT(61051, 75, 4);
                HERO.AIVAR[4] = TRUE;
            };
        };
        if ((Q206_FIGHTWITHPABLO) == (1)) {
            if (((NPC_ISINSTATE(NONE_7004_PABLO, 61603)) && (NPC_ISDEAD(NONE_6279_BANDIT))) && (NPC_ISDEAD(NONE_6280_BANDIT))) {
                Q206_FIGHTWITHPABLO = 2;
                NONE_7004_PABLO.AIVAR[96] = 1;
                NPC_SETATTITUDE(NONE_7004_PABLO, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(NONE_7004_PABLO, ATT_NEUTRAL);
                NONE_7004_PABLO.AIVAR[1] = CRIME_NONE;
                NONE_7004_PABLO.AIVAR[0] = FIGHT_NONE;
            };
        };
        if ((Q206_GOWITHPABLO) == (1)) {
            if (((NPC_GETDISTTONPC(HERO, NONE_13518_THUG)) <= (1000)) && ((NPC_GETDISTTOWP(NONE_7004_PABLO, NONE_7004_PABLO.WP)) <= (1000))) {
                Q206_GOWITHPABLO = 2;
                FF_APPLYONCEEXT(61056, 75, 4);
                HERO.AIVAR[4] = TRUE;
            };
        };
        if ((Q206_FISHERMANASKCOUNT) >= (2)) {
            if ((Q206_FISHERMAN_RUNAWAY) == (0)) {
                if (((NPC_ISINSTATE(NONE_13522_FISHERMAN, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                    if ((NPC_GETDISTTONPC(HERO, NONE_13522_FISHERMAN)) <= (700)) {
                        Q206_FISHERMAN_RUNAWAY = 1;
                        B_STARTOTHERROUTINE(NONE_13522_FISHERMAN, "Q206_FLEE");
                        NPC_REFRESH(NONE_13522_FISHERMAN);
                        B_LOGENTRY(TOPIC_Q206, LOG_Q206_FISHERMANRUNAWAY);
                    };
                };
            } else if ((Q206_FISHERMAN_RUNAWAY) == (1)) {
                if (((NPC_GETDISTTOWP(NONE_13522_FISHERMAN, NONE_13522_FISHERMAN.WP)) <= (500)) && ((NPC_ISINSTATE(NONE_13522_FISHERMAN, 61599)) == (FALSE))) {
                    Q206_FISHERMAN_RUNAWAY = 2;
                    B_STARTOTHERROUTINE(NONE_13522_FISHERMAN, "Q206_TIRED");
                    NPC_REFRESH(NONE_13522_FISHERMAN);
                };
            };
        };
    };
}

