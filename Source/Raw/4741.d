func void EVENTSMANAGER_QM305_SEWERS() {
    if (((LOG_GETSTATUS(MIS_QM305)) != (LOG_RUNNING)) || ((CURRENTLEVEL) != (ARCHOLOS_SEWERS_ZEN))) {
        return;
    };
    if ((QM305_GAMALOPENGATE) == (1)) {
        if (((NPC_GETDISTTOWP(DJG_13679_GAMAL_SEWERS, "S1_PATH_26")) <= (500)) && ((NPC_ISINSTATE(DJG_13679_GAMAL_SEWERS, 0xf09f)) == (FALSE))) {
            QM305_GAMALOPENGATE = 2;
            PRINTD("Biegnie do ko�owrota");
            NPC_CLEARAIQUEUE(DJG_13679_GAMAL_SEWERS);
            B_CLEARPERCEPTIONS(DJG_13679_GAMAL_SEWERS);
            AI_SETWALKMODE(DJG_13679_GAMAL_SEWERS, NPC_RUN);
            AI_GOTOWP(DJG_13679_GAMAL_SEWERS, "S1_WHEEL_OPEN");
            AI_USEMOB(DJG_13679_GAMAL_SEWERS, NPC_GETDETECTEDMOB(DJG_13679_GAMAL_SEWERS), -(1));
            AI_STANDUP(DJG_13679_GAMAL_SEWERS);
        };
    };
    if ((QM305_GAMALOPENGATE) == (3)) {
        QM305_GAMALOPENGATE = 4;
        PRINTD("Restet AI");
        B_STARTOTHERROUTINE(DJG_13679_GAMAL_SEWERS, "QM305_GUIDE_03");
        NPC_REFRESH(DJG_13679_GAMAL_SEWERS);
    };
}

