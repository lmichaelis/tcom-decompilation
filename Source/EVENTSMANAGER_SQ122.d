func void EVENTSMANAGER_SQ122() {
    var int SQ122_GOTFISHINGNET;
    if ((SQ122_GOTFISHINGNET) == (TRUE)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ122)) == (LOG_RUNNING)) {
        if ((SQ122_GOTFISHINGNET) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37010)) >= (1)) {
                SQ122_GOTFISHINGNET = TRUE;
                B_LOGENTRY(TOPIC_SQ122, LOG_SQ122_GOTFISHINGNET);
            };
        };
    };
}

