func void EVENTSMANAGER_Q403() {
    if ((LOG_GETSTATUS(MIS_Q403)) == (LOG_RUNNING)) {
        if ((Q403_CRAWLERSDONE) == (FALSE)) {
            if ((Q403_CRAWLERSAREDEAD()) == (TRUE)) {
                Q403_CRAWLERSDONE = TRUE;
                Q403_PREPAREBAES();
                B_LOGENTRY(TOPIC_Q403, LOG_Q403_CRAWLERSDEAD);
            };
        };
        if ((Q403_ORCSATTACK) == (1)) {
            if ((Q403_ORCSAREDEAD()) == (TRUE)) {
                Q403_ORCSATTACK = 2;
                B_STARTOTHERROUTINE(DJG_10015_BAES, "Q403_FOLLOW");
                NPC_REFRESH(DJG_10015_BAES);
            };
        };
        if ((NPC_ISINSTATE(DJG_10015_BAES, 61599)) == (FALSE)) {
            if ((Q403_BAESGUIDEUS) == (1)) {
                if ((NPC_GETDISTTOWP(DJG_10015_BAES, "PART11_COAL_05")) <= (500)) {
                    Q403_BAESGUIDEUS = 2;
                    B_STARTOTHERROUTINE(DJG_10015_BAES, "Q403_GUIDE_RIVER_02");
                    NPC_REFRESH(DJG_10015_BAES);
                };
            } else if ((Q403_BAESGUIDEUS) == (2)) {
                if ((NPC_GETDISTTOWP(DJG_10015_BAES, "PART16_RIVER_30")) <= (500)) {
                    Q403_BAESGUIDEUS = 3;
                    B_STARTOTHERROUTINE(DJG_10015_BAES, "Q403_GUIDE_RIVER_03");
                    NPC_REFRESH(DJG_10015_BAES);
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_Q403)) == (LOG_SUCCESS)) {
        if ((Q403_STARTNEXTQUEST) == (FALSE)) {
            Q403_STARTNEXTQUEST = TRUE;
            LOG_CREATETOPIC(TOPIC_Q404, LOG_MISSION);
            LOG_SETSTATUS(_@(MIS_Q404), TOPIC_Q404, LOG_RUNNING);
            B_LOGENTRY(TOPIC_Q404, LOG_Q404_START);
            if (HLP_ISVALIDNPC(DJG_16036_WOLFSON)) {
                B_REMOVENPC(58205);
            };
        };
        if ((Q402_GRONVOMIT) == (2)) {
            MDL_REMOVEOVERLAYMDS(DJG_10011_GRON, HUMANSDRUNKENMDS);
            B_STARTOTHERROUTINE(DJG_10011_GRON, START);
            NPC_REFRESH(DJG_10011_GRON);
            TELEPORTNPCTOWP(58265, DJG_10011_GRON.WP);
            Q402_GRONVOMIT = 3;
        };
        if (((Q402_ARETHEWAY) == (3)) || ((Q402_ARETHEWAY) == (2))) {
            B_STARTOTHERROUTINE(DJG_10012_ARETHE, START);
            NPC_REFRESH(DJG_10012_ARETHE);
            TELEPORTNPCTOWP(58271, DJG_10012_ARETHE.WP);
            Q402_ARETHEWAY = 4;
        };
        if ((Q404_CHANGENPCRTN) == (FALSE)) {
            Q404_CHANGENPCRTN = TRUE;
            B_STARTOTHERROUTINE(DJG_10014_VAHRAL, "DRUNK");
            NPC_REFRESH(DJG_10014_VAHRAL);
            TELEPORTNPCTOWP(58283, DJG_10014_VAHRAL.WP);
            B_STARTOTHERROUTINE(DJG_10017_LEGRIF, "NORMALDAY");
            NPC_REFRESH(DJG_10017_LEGRIF);
            TELEPORTNPCTOWP(58304, DJG_10017_LEGRIF.WP);
        };
    };
}

