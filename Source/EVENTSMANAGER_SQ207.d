func void EVENTSMANAGER_SQ207() {
    if ((LOG_GETSTATUS(MIS_SQ207)) != (LOG_RUNNING)) {
        return;
    };
    if ((((SQ207_DIMATOLEXX) >= (2)) && ((SQ207_DIMATOLEXX) != (3))) && ((SQ207_DIMATOLEXX) != (9))) {
        if (((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_79")) >= (3500)) && ((NPC_GETDISTTONPC(HERO, SLD_5001_DIMA)) >= (700))) {
            SQ207_DIMATOLEXX = 3;
            SQ207_DIMAISMAD();
            B_LOGENTRY(TOPIC_SQ207, LOG_SQ207_DIMA_FAILED);
        };
    };
    if ((SQ207_DIMA_CHANGESLDRTN) == (1)) {
        if ((NPC_GETDISTTOWP(SLD_13686_ARAXOS, "PARTM1_GUILDHOUSE02_03")) <= (2000)) {
            PRINTD("Idzie");
            SQ207_DIMA_CHANGESLDRTN = 2;
            B_STARTOTHERROUTINE(SLD_13686_ARAXOS, "SQ207_GOTOMARKET");
            NPC_REFRESH(SLD_13686_ARAXOS);
        };
    };
    if ((SQ207_DIMATOLEXX) == (2)) {
        if ((NPC_GETDISTTONPC(HERO, SLD_5001_DIMA)) >= (700)) {
            SQ207_DIMA_CHANGESLDRTN = 1;
            SQ207_DIMATOLEXX = 4;
            PRINTD("Pierwszy event");
            WLD_INSERTNPC(52243, "PARTM1_GUILDHOUSE02_03");
        };
    };
    if ((SQ207_DIMATOLEXX) == (4)) {
        if ((SQ207_ARAXOSEVENT_FINSIH) == (TRUE)) {
            if (HLP_ISVALIDNPC(SLD_13686_ARAXOS)) {
                if ((NPC_KNOWSINFO(HERO, 70874)) && ((NPC_GETDISTTONPC(HERO, SLD_13686_ARAXOS)) >= (500))) {
                    SQ207_DIMATOLEXX = 5;
                    WLD_INSERTNPC(52249, "PARTM1_PATH_42");
                };
            };
        };
    };
    if ((SQ207_DIMATOLEXX) == (5)) {
        if (HLP_ISVALIDNPC(VLK_13687_CITIZEN)) {
            if ((NPC_GETDISTTOWP(VLK_13687_CITIZEN, "PARTM1_PATH_42")) <= (3500)) {
                SQ207_DIMATOLEXX = 6;
                PRINTD("Drugi event");
                B_STARTOTHERROUTINE(VLK_13687_CITIZEN, "SQ207_RUNTOWP");
                NPC_REFRESH(VLK_13687_CITIZEN);
            };
        };
    };
    if ((SQ207_DIMATOLEXX) == (6)) {
        if (HLP_ISVALIDNPC(VLK_13687_CITIZEN)) {
            if (((NPC_GETDISTTONPC(HERO, VLK_13687_CITIZEN)) >= (700)) && (NPC_KNOWSINFO(HERO, 73302))) {
                SQ207_DIMATOLEXX = 7;
                PRINTD("Dima wraca");
                B_STARTOTHERROUTINE(SLD_5001_DIMA, "SQ207_WAIT");
                NPC_REFRESH(SLD_5001_DIMA);
                TELEPORTNPCTOWP(52075, SLD_5001_DIMA.WP);
            };
        };
    };
    if ((SQ207_DIMATOLEXX) == (7)) {
        if ((NPC_GETDISTTOWP(SLD_5001_DIMA, "PARTM1_PATH_88")) <= (1000)) {
            SQ207_DIMATOLEXX = 8;
            B_STARTOTHERROUTINE(SLD_5001_DIMA, "SQ207_COMEBACK");
            NPC_REFRESH(SLD_5001_DIMA);
        };
    };
}

