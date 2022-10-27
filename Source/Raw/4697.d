func void EVENTSMANAGER_Q301() {
    if ((LOG_GETSTATUS(MIS_Q301)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q301_SPOTCORPSELOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_BAR_IN_29")) <= (300)) {
            B_LOGENTRY(TOPIC_Q301, LOG_Q301_HAVENCORPSE);
            Q301_SPOTCORPSELOGENTRY = TRUE;
        };
    };
    if ((Q301_SPOTCORPSELOGENTRY) == (2)) {
        if ((Q301_SPOTCORPSELOGENTRY_DAY) == ((WLD_GETDAY()) - (2))) {
            FF_APPLYONCEEXTGT(0xfabe, 0, -(1));
            Q301_SPOTCORPSELOGENTRY = 3;
        };
    };
    if ((Q301_AFTERQ306) == (TRUE)) {
        if ((Q301_CANTLEAVEHAVEN) == (FALSE)) {
            if ((C_BODYSTATECONTAINS(HERO, BS_SWIM)) || (C_BODYSTATECONTAINS(HERO, BS_DIVE))) {
                Q301_CANTLEAVEHAVEN = TRUE;
                Q301_TELEPORTTOHAVEN();
            };
            if ((NPC_GETDISTTOWP(HERO, "PART17_HAVEN_CAVE_06")) <= (1000)) {
                Q301_CANTLEAVEHAVEN = TRUE;
                Q301_TELEPORTTOHAVEN();
            };
        };
    };
    if ((Q301_CORTEZCHECKBEN) == (1)) {
        if (((NPC_GETDISTTOWP(PIR_1303_CORTEZ, "PART17_BAR_BEN")) <= (300)) && ((NPC_ISINSTATE(PIR_1303_CORTEZ, 0xf09f)) == (FALSE))) {
            PRINTD("Cortez wraca!");
            AI_WAIT(PIR_1303_CORTEZ, 0x41200000);
            Q307_CORTEZ_RTNCHECK = 3;
            B_STARTOTHERROUTINE(PIR_1303_CORTEZ, "TAVERN_WAIT");
            NPC_REFRESH(PIR_1303_CORTEZ);
            Q301_CORTEZCHECKBEN = 2;
        };
    };
}

