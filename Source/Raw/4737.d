func void EVENTSMANAGER_QM301() {
    if ((LOG_GETSTATUS(MIS_QM301)) != (LOG_RUNNING)) {
        return;
    };
    if ((QM301_GOTEVERYTHING) == (FALSE)) {
        if (((QM301_CLEANSTREETS_COUNT) == (6)) && ((QM301_FINISHSAMBORTRAINING) == (TRUE))) {
            QM301_GOTEVERYTHING = 1;
            B_LOGENTRY(TOPIC_QM301, LOG_QM301_ALLTASKDONE);
        };
    };
    if ((QM301_CUTSCENE) == (1)) {
        if (((NPC_GETDISTTOWP(HERO, "PARTM2_MILSTATION_05")) <= (600)) && ((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM2_MILSTATION_05")) <= (600))) {
            QM301_CUTSCENE = 2;
            CUTSCENE_START(0x16aa0);
        };
    };
    if ((QM301_CUTSCENE) == (3)) {
        if ((QM301_CHASETHIEF) == (0)) {
            if ((NPC_GETDISTTONPC(HERO, NONE_826_ELID)) <= (1000)) {
                QM301_CHASETHIEF = 1;
                B_SAY(NONE_826_ELID, HERO, "$ELID_QM301_HELPME");
                QM301_CHASE();
            };
        } else if ((QM301_CHASETHIEF) == (1)) {
            if (((NPC_GETDISTTOWP(HERO, "PARTM2_PATH_45")) <= (400)) && ((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM2_PATH_45")) <= (400))) {
                QM301_CHASETHIEF = 2;
                B_SAY(MIL_4017_ARWID, HERO, "$ARWID_QM301_CHASE");
            };
        };
    };
    if ((QM301_CHASETHIEF) >= (1)) {
        if ((QM301_CHASETHIEF_END) == (0)) {
            if (((NPC_GETDISTTOWP(BDT_11096_THIEF, "PARTM3_HOBO_05")) <= (500)) && ((NPC_ISINSTATE(BDT_11096_THIEF, 0xf09f)) == (FALSE))) {
                QM301_CHASETHIEF_END = 1;
                PRINTD("Zmiana RTN");
                B_STARTOTHERROUTINE(BDT_11096_THIEF, "QM301_WAIT");
                NPC_REFRESH(BDT_11096_THIEF);
            };
        };
    };
    if ((QM301_FIGHTWITHTHIEFS) == (1)) {
        if ((NPC_ISDEAD(BDT_11096_THIEF)) && (NPC_ISDEAD(BDT_11097_THIEF))) {
            QM301_FIGHTWITHTHIEFS = 2;
            B_LOGENTRY(TOPIC_QM301, LOG_QM301_WONFIGHTTHIEFS);
        };
    };
    if ((QM301_FIGHTWITHTHIEFS) == (2)) {
        if ((NPC_HASITEMS(HERO, 0x917d)) >= (1)) {
            QM301_FIGHTWITHTHIEFS = 3;
            B_LOGENTRY(TOPIC_QM301, LOG_QM301_FOUNDELIDPOCKET);
        };
    };
}

