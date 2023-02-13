func void EVENTSMANAGER_PQ107() {
    var int PQ107_GOTFRIDADOCS;
    if ((LOG_GETSTATUS(MIS_PQ107)) != (LOG_RUNNING)) {
        return;
    };
    if ((PQ107_GOTFRIDADOCS) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37049)) >= (1)) {
            PQ107_GOTFRIDADOCS = TRUE;
            B_LOGENTRY(TOPIC_PQ107, LOG_PQ107_GOTDOCS);
        };
    };
}

