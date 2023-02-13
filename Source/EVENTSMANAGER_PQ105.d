func void EVENTSMANAGER_PQ105() {
    var int PQ105_GOTMIRT;
    if ((LOG_GETSTATUS(MIS_PQ105)) != (LOG_RUNNING)) {
        return;
    };
    if ((PQ105_GOTMIRT) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37649)) >= (3)) {
            PQ105_GOTMIRT = TRUE;
            PQ105_WEHAVEMIRT = TRUE;
            B_LOGENTRY(TOPIC_PQ105, LOG_PQ105_GOTMIRT);
        };
    };
}

