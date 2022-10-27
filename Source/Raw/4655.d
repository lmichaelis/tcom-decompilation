func void EVENTSMANAGER_CQ003() {
    if ((LOG_GETSTATUS(MIS_CQ003)) != (LOG_RUNNING)) {
        return;
    };
    if ((CQ003_HAPPYLORENZO) != (3)) {
        return;
    };
    if ((CQ003_HAPPYLORENZO) == (3)) {
        if (((((NPC_HASITEMS(VLK_6107_ARMAR, 0x912c)) >= (1)) || ((NPC_HASITEMS(VLK_6108_CITYTRADE02, 0x912c)) >= (1))) || ((NPC_HASITEMS(VLK_6110_CITYTRADE04, 0x912c)) >= (1))) || ((NPC_HASITEMS(VLK_6111_CITYTRADE05, 0x912c)) >= (1))) {
            CQ003_HAPPYLORENZO = 4;
            B_LOGENTRY(TOPIC_CQ003, LOG_CQ003_LORENZOHAPPY);
        };
    };
}

