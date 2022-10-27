func void EVENTSMANAGER_SQ510() {
    if ((LOG_GETSTATUS(MIS_SQ510)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ510_JUMP_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_SMALLROOM_06")) <= (500)) {
            SQ510_JUMP_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ510, LOG_SQ510_JUMP);
        };
    };
    if ((SQ510_WORMS_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_SMALLROOM_14")) <= (500)) {
            SQ510_WORMS_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ510, LOG_SQ510_WORMS);
        };
    };
    if ((SQ510_CAULDRON_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_SMALLROOM_28")) <= (500)) {
            SQ510_CAULDRON_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ510, LOG_SQ510_CAULDRON);
        };
    };
    if ((SQ510_BOOK_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_SMALLROOM_34")) <= (500)) {
            SQ510_BOOK_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ510, LOG_SQ510_BOOK);
        };
    };
    if ((SQ510_POTION_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_SMALLROOM_37")) <= (400)) {
            SQ510_POTION_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ510, LOG_SQ510_POTION);
        };
    };
}

var int EVENTSMANAGER_SQ510.SQ510_JUMP_LOGENTRY = 0;
var int EVENTSMANAGER_SQ510.SQ510_WORMS_LOGENTRY = 0;
var int EVENTSMANAGER_SQ510.SQ510_CAULDRON_LOGENTRY = 0;
var int EVENTSMANAGER_SQ510.SQ510_BOOK_LOGENTRY = 0;
var int EVENTSMANAGER_SQ510.SQ510_POTION_LOGENTRY = 0;
