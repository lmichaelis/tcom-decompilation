func void EVENTSMANAGER_SQ219() {
    var int SQ219_VINEYARD_IDEA_LOGENTRY;
    var int SQ219_SWAMP_IDEA_LOGENTRY;
    var int SQ219_WOLFSDEN_IDEA_LOGENTRY;
    if ((SQ219_GARD_VANISH) || ((LOG_GETSTATUS(MIS_SQ219)) == (0))) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_RUNNING)) {
        if ((NPC_ISINSTATE(VLK_10035_GARD, 61599)) == (FALSE)) {
            if ((((SQ219_WOLFSDEN_IDEA_LOGENTRY) == (FALSE)) && ((SQ219_WOLFSDEN_VISITED) == (TRUE))) && ((GARD_WOLFSDEN) == (FALSE))) {
                SQ219_WOLFSDEN_IDEA_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ219, LOG_SQ219_WOLFSDEN_IDEA);
            };
            if ((((SQ219_SWAMP_IDEA_LOGENTRY) == (FALSE)) && ((SQ219_SWAMP_VISITED) == (TRUE))) && ((GARD_VINEYARD) == (FALSE))) {
                SQ219_SWAMP_IDEA_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ219, LOG_SQ219_SWAMP_IDEA);
            };
            if ((((SQ219_VINEYARD_IDEA_LOGENTRY) == (FALSE)) && ((SQ219_VINEYARD_VISITED) == (TRUE))) && ((GARD_SWAMP) == (FALSE))) {
                SQ219_VINEYARD_IDEA_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ219, LOG_SQ219_VINEYARD_IDEA);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_SUCCESS)) {
        if ((NPC_GETDISTTONPC(HERO, VLK_10035_GARD)) >= (5000)) {
            if ((SQ219_EASTER_EGG) == (TRUE)) {
                PRINTD("Gard chilluje w wulkanie");
                AI_TELEPORT(VLK_10035_GARD, "PART14_EASTEREGG_GARD");
                B_STARTOTHERROUTINE(VLK_10035_GARD, "EASTEREGG");
                SQ219_GARD_VANISH = TRUE;
            };
        };
    };
}

