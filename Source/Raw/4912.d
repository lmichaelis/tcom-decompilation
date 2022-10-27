func void EVENTSMANAGER_NS72() {
    if ((RND_NS04_P17) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS72_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS72_SPAWNED) == (FALSE)) {
                PRINTD("Kajma i beczka");
                WLD_INSERTNPC(0xe625, RNG_NS72_WAYPOINT);
                WLD_INSERTNPC(0xe628, "P17_HAVEN_EVENT02");
                WLD_INSERTNPC(0xe62b, "P17_HAVEN_EVENT03");
                WLD_INSERTNPC(0xe62e, RNG_NS72_WAYPOINTKAJMA);
                RANDOMEVENT_SPAWNCOUNTER();
                FF_APPLYONCEEXTGT(0x17124, 0, -(1));
                NS72_SPAWNED = 1;
            };
        };
    };
}

func void EVENTSMANAGER_NS72_APPLY() {
    if ((EVENTSMANAGER_NS72_COUNT) == (0)) {
        PRINTD("Rozpoczynam - EventsManager_NS72_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KAJMA_MOVER_BARREL");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KAJMA_BARREL", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KAJMA_MOVER_BARREL");
        EVENTSMANAGER_NS72_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - EventsManager_NS72_Apply");
        CHANGEVOBCOLLISION("KAJMA_BARREL", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0x17124);
        EVENTSMANAGER_NS72_COUNT = 0;
    };
}

var int EVENTSMANAGER_NS72_APPLY.EVENTSMANAGER_NS72_COUNT = 0;
instance EVENTSMANAGER_NS72_APPLY.MOVER1(ZCMOVER)
var int EVENTSMANAGER_NS72_APPLY.MOVPTR1 = 0;
func void EVENTSMANAGER_NS72_TRIAL() {
    if ((NS72_SPAWNED) == (1)) {
        if ((NS72_STATUS) == (1)) {
            if ((((NS72_DAY) + (3)) <= (WLD_GETDAY())) && ((NPC_GETDISTTOWP(HERO, RNG_NS72_WAYPOINT)) <= (RNG_RADIUS_BIG))) {
                FF_APPLYONCEEXTGT(0x17124, 0, -(1));
                if ((NS72_BARRELOFFORTUNE) == (0)) {
                    PRINTD("kajma i g³ód");
                    WLD_INSERTNPC(0xe631, RNG_NS72_WAYPOINTKAJMA);
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, START);
                    B_KILLNPC(0xe631);
                } else if ((NS72_BARRELOFFORTUNE) == (1)) {
                    PRINTD("kajma i bagno");
                    WLD_INSERTNPC(0xe631, "PART17_MOB_10");
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, "SWAMP");
                    B_KILLNPC(0xe631);
                } else if ((NS72_BARRELOFFORTUNE) == (2)) {
                    PRINTD("kajma i bezsennoœæ");
                    WLD_INSERTNPC(0xe631, RNG_NS72_WAYPOINTKAJMA);
                    NPC_EXCHANGEROUTINE(PIR_14131_TIREDAMJAK, START);
                };
                NS72_STATUS = 2;
            };
        };
    };
}

