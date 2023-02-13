func void EVENTSMANAGER_Q506() {
    var int Q506_WHEREDUSTER;
    if ((LOG_GETSTATUS(MIS_Q506)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q506_WHEREDUSTER) == (FALSE)) {
        if (((NPC_KNOWSINFO(HERO, 67260)) == (FALSE)) && ((NPC_KNOWSINFO(HERO, 65953)) == (FALSE))) {
            if (((((NPC_GETDISTTOWP(HERO, "HARBOUR_WALLS_07")) <= (500)) || ((NPC_GETDISTTOWP(HERO, "HARBOUR_WALLS_13")) <= (500))) || ((NPC_GETDISTTOWP(HERO, "HARBOUR_WALLS_29")) <= (500))) || ((NPC_GETDISTTOWP(HERO, "HARBOUR_WALLS_30")) <= (500))) {
                B_LOGENTRY(TOPIC_Q506, LOG_Q506_WHEREDUSTER);
                Q506_WHEREDUSTER = TRUE;
            };
        };
    };
}

