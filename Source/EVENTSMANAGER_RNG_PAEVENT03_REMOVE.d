func void EVENTSMANAGER_RNG_PAEVENT03_REMOVE() {
    if (((RNG_PAEVENT03_SPAWNED) == (TRUE)) && ((PAEVENT03ENCOUNTER) == (FALSE))) {
        if ((NPC_GETDISTTONPC(HERO, NONE_14040_APPARITIONWS)) <= (RNG_RADIUS_VERYCLOSE)) {
            PRINTD("Odszed�.");
            B_STARTOTHERROUTINE(NONE_14040_APPARITIONWS, TOT);
            NPC_REFRESH(NONE_14040_APPARITIONWS);
            TELEPORTNPCTOWP(56123, TOT);
            B_KILLNPC(56123);
            PAEVENT03ENCOUNTER = TRUE;
        };
    };
}

