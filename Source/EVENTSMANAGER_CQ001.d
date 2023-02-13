func void EVENTSMANAGER_CQ001() {
    if (((LOG_GETSTATUS(MIS_CQ001)) != (LOG_RUNNING)) || ((CQ001_CHESSBOOK) >= (2))) {
        return;
    };
    if ((CQ001_CHESSBOOK) == (1)) {
        if ((NPC_HASITEMS(HERO, 37154)) >= (1)) {
            CQ001_CHESSBOOK = 3;
            B_LOGENTRY(TOPIC_CQ001, LOG_CQ001_GOTBOOK);
        };
    };
}

