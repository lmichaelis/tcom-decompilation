func void EVENTSMANAGER_NS72() {
    if ((RND_NS04_P17) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS72_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS72_SPAWNED) == (FALSE)) {
                PRINTD("Kajma i beczka");
                WLD_INSERTNPC(58917, RNG_NS72_WAYPOINT);
                WLD_INSERTNPC(58920, "P17_HAVEN_EVENT02");
                WLD_INSERTNPC(58923, "P17_HAVEN_EVENT03");
                WLD_INSERTNPC(58926, RNG_NS72_WAYPOINTKAJMA);
                RANDOMEVENT_SPAWNCOUNTER();
                FF_APPLYONCEEXTGT(94500, 0, -(1));
                NS72_SPAWNED = 1;
            };
        };
    };
}

func void EVENTSMANAGER_NS72_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int EVENTSMANAGER_NS72_COUNT;
    if ((EVENTSMANAGER_NS72_COUNT) == (0)) {
        PRINTD("Rozpoczynam - EventsManager_NS72_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KAJMA_MOVER_BARREL");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KAJMA_BARREL", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KAJMA_MOVER_BARREL");
        EVENTSMANAGER_NS72_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - EventsManager_NS72_Apply");
        CHANGEVOBCOLLISION("KAJMA_BARREL", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(94500);
        EVENTSMANAGER_NS72_COUNT = 0;
    };
}

func void EVENTSMANAGER_NS72_TRIAL() {
    if ((NS72_SPAWNED) == (1)) {
        if ((NS72_STATUS) == (1)) {
            if ((((NS72_DAY) + (3)) <= (WLD_GETDAY())) && ((NPC_GETDISTTOWP(HERO, RNG_NS72_WAYPOINT)) <= (RNG_RADIUS_BIG))) {
                FF_APPLYONCEEXTGT(94500, 0, -(1));
                if ((NS72_BARRELOFFORTUNE) == (0)) {
                    PRINTD("kajma i g��d");
                    WLD_INSERTNPC(58929, RNG_NS72_WAYPOINTKAJMA);
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, START);
                    B_KILLNPC(58929);
                } else if ((NS72_BARRELOFFORTUNE) == (1)) {
                    PRINTD("kajma i bagno");
                    WLD_INSERTNPC(58929, "PART17_MOB_10");
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, "SWAMP");
                    B_KILLNPC(58929);
                } else if ((NS72_BARRELOFFORTUNE) == (2)) {
                    PRINTD("kajma i bezsenno��");
                    WLD_INSERTNPC(58929, RNG_NS72_WAYPOINTKAJMA);
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, START);
                };
                NS72_STATUS = 2;
            };
        };
    };
}

