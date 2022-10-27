func void EVENTSMANAGER_Q106() {
    if ((LOG_GETSTATUS(MIS_Q106)) == (LOG_RUNNING)) {
        if ((Q106_FIGHTWITHSCAVENGERS) == (1)) {
            if (((NPC_ISDEAD(SCAVENGER_BODOWIN_01)) && (NPC_ISDEAD(SCAVENGER_BODOWIN_02))) && (NPC_ISDEAD(SCAVENGER_BODOWIN_03))) {
                Q106_FIGHTWITHSCAVENGERS = 2;
                B_LOGENTRY(TOPIC_Q106, LOG_Q106_SCAVENGERS);
            };
        };
        if ((Q106_GOTJORNPOTION) == (1)) {
            if (!(NPC_KNOWSINFO(HERO, 0x157e7))) {
                if (((NPC_GETDISTTONPC(HERO, BAU_702_VIKTOR)) <= (0x7d0)) && ((NPC_ISINSTATE(BAU_702_VIKTOR, 0xf09f)) == (FALSE))) {
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

var int EVENTSMANAGER_Q106.Q106_CHANGEVIKTORRTN = 0;
