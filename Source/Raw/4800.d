func void EVENTSMANAGER_SQ413() {
    if ((SQ413_SNAKE) == (3)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ413)) == (LOG_RUNNING)) {
        if ((SQ413_RIGHTPLACE_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_HOTEL_15")) <= (350)) {
                SQ413_RIGHTPLACE_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ413, LOG_SQ413_RIGHTPLACE);
            };
        };
        if ((SQ413_CHESTREADY) == (TRUE)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM3_BENCH_01")) <= (500)) {
                SQ413_CHESTREADY = 2;
                B_LOGENTRY(TOPIC_SQ413, LOG_SQ413_WHEREHEGO);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ413)) == (LOG_SUCCESS)) {
        if ((SQ413_SNAKE) == (1)) {
            if ((SQ413_SNAKE_DAY) <= ((WLD_GETDAY()) - (1))) {
                SQ413_SNAKE = 2;
                SQ413_SPAWNGUARDS();
            };
        } else if ((SQ413_SNAKE) == (3)) {
            if ((SQ413_SNAKE_DAY) <= ((WLD_GETDAY()) - (1))) {
                SQ413_SNAKE = 4;
                SQ413_REMOVEGUARDS();
            };
        };
    };
}

var int EVENTSMANAGER_SQ413.SQ413_RIGHTPLACE_LOGENTRY = 0;
