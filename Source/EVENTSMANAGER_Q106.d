func void EVENTSMANAGER_Q106() {
    var int Q106_CHANGEVIKTORRTN;
    if ((LOG_GETSTATUS(MIS_Q106)) == (LOG_RUNNING)) {
        if ((Q106_FIGHTWITHSCAVENGERS) == (1)) {
            if (((NPC_ISDEAD(SCAVENGER_BODOWIN_01)) && (NPC_ISDEAD(SCAVENGER_BODOWIN_02))) && (NPC_ISDEAD(SCAVENGER_BODOWIN_03))) {
                Q106_FIGHTWITHSCAVENGERS = 2;
                B_LOGENTRY(TOPIC_Q106, LOG_Q106_SCAVENGERS);
            };
        };
        if ((Q106_GOTJORNPOTION) == (1)) {
            if (!(NPC_KNOWSINFO(HERO, 88039))) {
                if (((NPC_GETDISTTONPC(HERO, BAU_702_VIKTOR)) <= (2000)) && ((NPC_ISINSTATE(BAU_702_VIKTOR, 61599)) == (FALSE))) {
                    if ((Q106_CHANGEVIKTORRTN) == (FALSE)) {
                        Q106_CHANGEVIKTORRTN = TRUE;
                        B_STARTOTHERROUTINE(BAU_702_VIKTOR, "Q106_FOLLOW");
                        NPC_REFRESH(BAU_702_VIKTOR);
                    };
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_Q106)) == (LOG_SUCCESS)) {
        if ((Q201_SPAWNEARAXOSFASTTRAVEL) == (0)) {
            Q201_SPAWNARAXOSFASTTRAVELGUY();
        };
    };
}

