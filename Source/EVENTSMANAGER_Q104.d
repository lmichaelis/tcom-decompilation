func void EVENTSMANAGER_Q104() {
    if ((LOG_GETSTATUS(MIS_Q104)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q104_FABIODEAL) == (TRUE)) {
        if (((NPC_HASITEMS(HERO, 36411)) >= (1)) && ((Q104_FOUNDRAWBEEF) == (FALSE))) {
            B_LOGENTRY(TOPIC_Q104, LOG_Q104_BEEFFORFABIOHAVETOFRY);
            Q104_FOUNDRAWBEEF = TRUE;
        };
        if (((NPC_HASITEMS(HERO, 36413)) >= (1)) && ((Q104_BEEFISREADY) == (FALSE))) {
            B_LOGENTRY(TOPIC_Q104, LOG_Q104_BEEFFORFABIOREADY);
            Q104_BEEFISREADY = TRUE;
        };
    };
    if ((Q104_FABIOBROTHERLYWORK) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_5_FABIO, "PART12_RAMSEYHOUSE_06")) <= (750)) {
            PRINTD("Fabio gotowy, naliczono punkt!");
            Q104_REFUGEESFORWORK = (Q104_REFUGEESFORWORK) + (1);
            if ((((Q104_REFUGEESFORWORK) >= (3)) && ((Q104_REFUGEESENTRY) == (FALSE))) && (NPC_KNOWSINFO(HERO, 88225))) {
                B_LOGENTRY(TOPIC_Q104, LOG_Q104_THATSENOUGH);
            };
            Q104_FABIOBROTHERLYWORK = 2;
        };
    };
    if ((Q104_TIMOBROTHERLYWORK) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_6_TIMO, "PART12_RAMSEYHOUSE_06")) <= (750)) {
            PRINTD("Timo gotowy, naliczono punkt!");
            Q104_REFUGEESFORWORK = (Q104_REFUGEESFORWORK) + (1);
            if ((((Q104_REFUGEESFORWORK) >= (3)) && ((Q104_REFUGEESENTRY) == (FALSE))) && (NPC_KNOWSINFO(HERO, 88225))) {
                B_LOGENTRY(TOPIC_Q104, LOG_Q104_THATSENOUGH);
            };
            Q104_TIMOBROTHERLYWORK = 2;
        };
    };
    if ((Q104_RUPERTBROTHERLYWORK) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_100007_RUPERT, "PART12_RAMSEYHOUSE_06")) <= (750)) {
            PRINTD("Rupert gotowy, naliczono punkt!");
            Q104_REFUGEESFORWORK = (Q104_REFUGEESFORWORK) + (1);
            if ((((Q104_REFUGEESFORWORK) >= (3)) && ((Q104_REFUGEESENTRY) == (FALSE))) && (NPC_KNOWSINFO(HERO, 88225))) {
                B_LOGENTRY(TOPIC_Q104, LOG_Q104_THATSENOUGH);
            };
            Q104_RUPERTBROTHERLYWORK = 2;
        };
    };
    if ((Q104_LEABROTHERLYWORK) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_100009_LEA, "PART12_RAMSEYHOUSE_06")) <= (750)) {
            PRINTD("Lea gotowa, naliczono punkt!");
            Q104_REFUGEESFORWORK = (Q104_REFUGEESFORWORK) + (1);
            if ((((Q104_REFUGEESFORWORK) >= (3)) && ((Q104_REFUGEESENTRY) == (FALSE))) && (NPC_KNOWSINFO(HERO, 88225))) {
                B_LOGENTRY(TOPIC_Q104, LOG_Q104_THATSENOUGH);
            };
            Q104_LEABROTHERLYWORK = 2;
        };
    };
    if ((Q104_MAIWENBROTHERLYWORK) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_100011_MAIWEN, "PART12_RAMSEYHOUSE_06")) <= (750)) {
            PRINTD("Maiwen gotowa, naliczono punkt!");
            Q104_REFUGEESFORWORK = (Q104_REFUGEESFORWORK) + (1);
            if ((((Q104_REFUGEESFORWORK) >= (3)) && ((Q104_REFUGEESENTRY) == (FALSE))) && (NPC_KNOWSINFO(HERO, 88225))) {
                B_LOGENTRY(TOPIC_Q104, LOG_Q104_THATSENOUGH);
            };
            Q104_MAIWENBROTHERLYWORK = 2;
        };
    };
    if ((Q104_KAZEEMBROTHERLYWORK) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_100012_KAZEEM, "PART12_RAMSEYHOUSE_06")) <= (750)) {
            PRINTD("Kazeem gotowy, naliczono punkt!");
            Q104_REFUGEESFORWORK = (Q104_REFUGEESFORWORK) + (1);
            if ((((Q104_REFUGEESFORWORK) >= (3)) && ((Q104_REFUGEESENTRY) == (FALSE))) && (NPC_KNOWSINFO(HERO, 88225))) {
                B_LOGENTRY(TOPIC_Q104, LOG_Q104_THATSENOUGH);
            };
            Q104_KAZEEMBROTHERLYWORK = 2;
        };
    };
}

