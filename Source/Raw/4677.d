func void EVENTSMANAGER_PQ105() {
    if ((LOG_GETSTATUS(MIS_PQ105)) != (LOG_RUNNING)) {
        return;
    };
    if ((PQ105_GOTMIRT) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x9311)) >= (3)) {
            PQ105_GOTMIRT = TRUE;
            PQ105_WEHAVEMIRT = TRUE;
            B_LOGENTRY(TOPIC_PQ105, LOG_PQ105_GOTMIRT);
        };
    };
}

var int EVENTSMANAGER_PQ105.PQ105_GOTMIRT = 0;
