func void EVENTSMANAGER_SQ404() {
    if ((LOG_GETSTATUS(MIS_SQ404)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ404_FOUNDHAND_LOGENTRY) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x91b4)) >= (1)) {
            SQ404_FOUNDHAND_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ404, LOG_SQ404_FOUNDHAND);
        };
    };
    if ((SQ404_FOUNDGEAR_LOGENTRY) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x91ba)) >= (1)) {
            SQ404_FOUNDGEAR_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ404, LOG_SQ404_GEAR);
        };
    };
}

var int EVENTSMANAGER_SQ404.SQ404_FOUNDHAND_LOGENTRY = 0;
