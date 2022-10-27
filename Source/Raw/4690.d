func void EVENTSMANAGER_Q202() {
    if (((LOG_GETSTATUS(MIS_Q202)) != (LOG_RUNNING)) && ((Q202_FOUNDMATEYHOUSE) == (FALSE))) {
        return;
    };
    if ((Q202_FOUNDMATEYHOUSE) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_40")) <= (1000)) || ((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_45")) <= (1000))) {
            Q202_FOUNDMATEYHOUSE = TRUE;
            B_LOGENTRY(TOPIC_Q202, LOG_Q202_FOUNDMATEY);
        };
    };
}

