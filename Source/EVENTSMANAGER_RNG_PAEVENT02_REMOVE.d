func void EVENTSMANAGER_RNG_PAEVENT02_REMOVE() {
    if (((RNG_PAEVENT02_SPAWNED) == (TRUE)) && ((PAEVENT02ENCOUNTER) == (FALSE))) {
        if ((NPC_GETDISTTONPC(HERO, NONE_14039_APPARITIONWS)) <= (RNG_RADIUS_VERYCLOSE)) {
            PRINTD("Odszed�.");
            B_STARTOTHERROUTINE(NONE_14039_APPARITIONWS, TOT);
            NPC_REFRESH(NONE_14039_APPARITIONWS);
            TELEPORTNPCTOWP(56120, TOT);
            B_KILLNPC(56120);
            PAEVENT02ENCOUNTER = TRUE;
        };
    };
}

