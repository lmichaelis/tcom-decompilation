func void EVENTSMANAGER_SQ122() {
    if ((SQ122_GOTFISHINGNET) == (TRUE)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ122)) == (LOG_RUNNING)) {
        if ((SQ122_GOTFISHINGNET) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x9092)) >= (1)) {
                SQ122_GOTFISHINGNET = TRUE;
                B_LOGENTRY(TOPIC_SQ122, LOG_SQ122_GOTFISHINGNET);
            };
        };
    };
}

var int EVENTSMANAGER_SQ122.SQ122_GOTFISHINGNET = 0;
