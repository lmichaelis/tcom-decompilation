func void EVENTSMANAGER_SQ231() {
    var int SQ231_DOGISDEAD;
    if (((LOG_GETSTATUS(MIS_SQ231)) != (LOG_RUNNING)) || ((SQ231_DOGISDEAD) == (TRUE))) {
        return;
    };
    if ((SQ231_DOGISDEAD) == (FALSE)) {
        if (NPC_ISDEAD(VLK_13641_OLDDOG)) {
            SQ231_DOGISDEAD = TRUE;
            LOG_SETSTATUS(_@(MIS_SQ231), TOPIC_SQ231, LOG_FAILED);
            B_LOGENTRY(TOPIC_SQ231, LOG_SQ231_FAILED);
        };
    };
}

