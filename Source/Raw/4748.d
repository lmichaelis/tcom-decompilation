func void EVENTSMANAGER_SQ107() {
    if ((LOG_GETSTATUS(MIS_SQ107)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ107_GOTPAPERS) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x90a6)) >= (1)) {
            SQ107_GOTPAPERS = TRUE;
            B_LOGENTRY(TOPIC_SQ107, LOG_SQ107_GOTDOC);
        };
    };
}

