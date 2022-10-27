func void EVENTSMANAGER_Q402() {
    if ((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) {
        if (NPC_KNOWSINFO(HERO, 0x13e78)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_PATH_21")) <= (500)) {
                if ((LOG_Q402_SEARCHLEGRIF_BEER_LOGENTRY) == (FALSE)) {
                    LOG_Q402_SEARCHLEGRIF_BEER_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_Q402, LOG_Q402_SEARCHLEGRIF_BEER);
                } else if ((LOG_Q402_SEARCHLEGRIF_BEER_LOGENTRY) == (TRUE)) {
                    if (NPC_KNOWSINFO(HERO, 0x13ffe)) {
                        LOG_Q402_SEARCHLEGRIF_BEER_LOGENTRY = 2;
                        if (!(NPC_KNOWSINFO(HERO, 0x140a0))) {
                            B_LOGENTRY(TOPIC_Q402, LOG_Q402_SEARCHLEGRIF_IDEA);
                        };
                    };
                };
            };
            if ((Q402_BOLTLOGENTRY) == (FALSE)) {
                if ((NPC_HASITEMS(HERO, 0x91d7)) >= (1)) {
                    Q402_BOLTLOGENTRY = TRUE;
                    CREATEINVITEMS(HERO, 0x8650, 1);
                    NPC_REMOVEINVITEMS(HERO, 0x91d7, 1);
                    B_LOGENTRY(TOPIC_Q402, LOG_Q402_GRONBOLTINFO);
                    B_GIVEPLAYERXP(XP_Q402_GRON);
                };
            };
            if ((Q402_BOLTLOGENTRY_ARETHE) == (FALSE)) {
                if ((NPC_HASITEMS(HERO, 0x91d8)) >= (1)) {
                    Q402_BOLTLOGENTRY_ARETHE = TRUE;
                    CREATEINVITEMS(HERO, 0x8650, 1);
                    if ((Q402_BOLT_ARETHE) == (FALSE)) {
                        Q402_BOLT_ARETHE = TRUE;
                        B_LOGENTRY(TOPIC_Q402, LOG_Q402_ARETHEBOLTINFO);
                        B_GIVEPLAYERXP(XP_Q402_ARETHE);
                    };
                };
            };
        };
        if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
            if ((Q404_GRONSTATUS) == (2)) {
                Q404_GRONSTATUS = 3;
                B_STARTOTHERROUTINE(DJG_10011_GRON, START);
                NPC_REFRESH(DJG_10011_GRON);
            };
            if ((Q404_VAHRALSTATUS) == (2)) {
                Q404_VAHRALSTATUS = 3;
                B_STARTOTHERROUTINE(DJG_10014_VAHRAL, "NORMALDAY");
                NPC_REFRESH(DJG_10014_VAHRAL);
            };
            if ((Q404_LEGRIFSTATUS) == (2)) {
                Q404_LEGRIFSTATUS = 3;
                B_STARTOTHERROUTINE(DJG_10017_LEGRIF, "NORMALDAY");
                NPC_REFRESH(DJG_10017_LEGRIF);
            };
            if ((Q404_DALMONSTATUS) == (3)) {
                Q404_DALMONSTATUS = 4;
                B_STARTOTHERROUTINE(DJG_10027_DALMON, TOT);
                NPC_REFRESH(DJG_10027_DALMON);
            };
            if ((Q404_LASTLOGENTRY) == (FALSE)) {
                Q404_LASTLOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q402, LOG_Q402_AFTERMINE);
            };
            if (((NPC_GETDISTTOWP(HERO, "WOLFSDEN_TAVERN_03")) <= (550)) && ((Q402_IVYLOSTLOGENTRY) == (FALSE))) {
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_LostIvy_15_01");
                B_LOGENTRY(TOPIC_Q402, LOG_Q402_INNKEEPER_LOSTIVY);
                Q402_IVYLOSTLOGENTRY = TRUE;
            };
            if (((NPC_HASITEMS(HERO, 0x91d9)) >= (1)) && ((Q402_SPAWNBANDITS) == (FALSE))) {
                Q402_SPAWNBANDITS = TRUE;
                PRINTD("Nieproszeni goœcie przyszli.");
                BDT_6379_BANDIT.FLAGS = 0;
                BDT_6380_BANDIT.FLAGS = 0;
                BDT_6381_BANDIT.FLAGS = 0;
                B_STARTOTHERROUTINE(BDT_6379_BANDIT, "Q402_TRAP");
                NPC_REFRESH(BDT_6379_BANDIT);
                TELEPORTNPCTOWP(0xe2ed, BDT_6379_BANDIT.WP);
                B_STARTOTHERROUTINE(BDT_6380_BANDIT, "Q402_TRAP");
                NPC_REFRESH(BDT_6380_BANDIT);
                TELEPORTNPCTOWP(0xe2f0, BDT_6380_BANDIT.WP);
                B_STARTOTHERROUTINE(BDT_6381_BANDIT, "Q402_TRAP");
                NPC_REFRESH(BDT_6381_BANDIT);
                TELEPORTNPCTOWP(0xe2f3, BDT_6381_BANDIT.WP);
            };
            if ((Q402_LUDWIG_FINISHEDMAP) == (1)) {
                if ((NPC_KNOWSINFO(HERO, 0x102a5)) || (NPC_KNOWSINFO(HERO, 0x115fa))) {
                    if ((Q402_LUDWIG_FINISHEDMAP_DAY) <= ((WLD_GETDAY()) - (1))) {
                        Q402_LUDWIG_FINISHEDMAP = 2;
                        PRINTD("Marvin mo¿e odebraæ mape.");
                    };
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_Q402)) == (LOG_SUCCESS)) {
        if ((Q404_TELEPORTVOLKERPEOPLE) == (FALSE)) {
            Q404_TELEPORTVOLKERPEOPLE = TRUE;
            VOLKERGUARDS_PREPARESCENE();
        };
    };
}

var int EVENTSMANAGER_Q402.LOG_Q402_SEARCHLEGRIF_BEER_LOGENTRY = 0;
