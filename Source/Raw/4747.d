func void EVENTSMANAGER_SQ104() {
    if ((LOG_GETSTATUS(MIS_SQ104)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ105_BROKENFENCE) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "VILLAGE_SHEEP_FENCE")) <= (300)) {
            if ((NPC_KNOWSINFO(HERO, 0x15f8a)) == (FALSE)) {
                SQ105_BROKENFENCE = TRUE;
                B_LOGENTRY(TOPIC_SQ104, LOG_SQ104_BROKENFENCE);
            };
        };
    };
    if (HLP_ISVALIDNPC(NONE_13798_BRUCE)) {
        if (((NPC_ISDEAD(NONE_13798_BRUCE)) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ104)) == (LOG_RUNNING))) {
            B_LOGENTRY(TOPIC_SQ104, LOG_SQ104_BRUCEISDEAD);
            LOG_SETSTATUS(_@(MIS_SQ104), TOPIC_SQ104, LOG_FAILED);
        };
    };
}

