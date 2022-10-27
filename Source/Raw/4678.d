func void EVENTSMANAGER_PQ107() {
    if ((LOG_GETSTATUS(MIS_PQ107)) != (LOG_RUNNING)) {
        return;
    };
    if ((PQ107_GOTFRIDADOCS) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x90b9)) >= (1)) {
            PQ107_GOTFRIDADOCS = TRUE;
            B_LOGENTRY(TOPIC_PQ107, LOG_PQ107_GOTDOCS);
        };
    };
}

var int EVENTSMANAGER_PQ107.PQ107_GOTFRIDADOCS = 0;
