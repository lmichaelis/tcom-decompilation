func void EVENTSMANAGER_PQ108() {
    var int PQ108_FOUNDTROLLS_LOGENTRY;
    var int PQ108_FOUNDRECIPIE_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_PQ108)) != (LOG_RUNNING)) {
        return;
    };
    if ((PQ108_FOUNDRECIPIE_LOGENTRY) == (FALSE)) {
        if (((NPC_HASITEMS(HERO, 37825)) >= (1)) || ((NPC_HASITEMS(HERO, 37883)) >= (1))) {
            PQ108_FOUNDRECIPIE_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_PQ108, LOG_PQ108_GOTRECIPIE);
        };
        if ((PQ108_FOUNDTROLLS_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART1_PATH_65")) <= (2000)) {
                B_LOGENTRY(TOPIC_PQ108, LOG_PQ108_FOUNDTROLLS);
                PQ108_FOUNDTROLLS_LOGENTRY = TRUE;
            };
        };
    };
}

