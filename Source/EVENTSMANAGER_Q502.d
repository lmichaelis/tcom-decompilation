func void EVENTSMANAGER_Q502() {
    if ((LOG_GETSTATUS(MIS_Q502)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q502_STARTTRIALOG) == (1)) {
        Q502_STARTTRIALOG = 2;
        HERO.AIVAR[4] = TRUE;
        FF_APPLYONCEEXT(63428, 75, 4);
    };
    if ((Q502_QUITTRIALOG) == (1)) {
        Q502_QUITTRIALOG = 2;
        FF_APPLYONCEEXT(63430, 75, 4);
    };
    if (NPC_KNOWSINFO(HERO, 80147)) {
        if ((Q502_NEARVOLFZACKELOGENTRY) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "PART5_PATH_06")) <= (700)) || ((NPC_GETDISTTOWP(HERO, "PART5_PATH_40")) <= (700))) {
                Q502_NEARVOLFZACKELOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q502, LOG_Q502_NEARVOLFZACKE);
            };
        };
        if ((Q502_PREPAREKESSEL) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART5_PATH_22")) <= (5000)) {
                Q502_PREPAREKESSEL = TRUE;
                Q502_PREPARENPCV4();
            };
        };
    };
}

