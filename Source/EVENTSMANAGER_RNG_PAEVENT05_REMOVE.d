func void EVENTSMANAGER_RNG_PAEVENT05_REMOVE() {
    if (((RNG_PAEVENT05_SPAWNED) == (TRUE)) && ((PAEVENT05ENCOUNTER) == (FALSE))) {
        if ((NPC_GETDISTTONPC(HERO, NONE_14042_APPARITIONWS)) <= (RNG_RADIUS_VERYCLOSE)) {
            PRINTD("Odszed�.");
            B_STARTOTHERROUTINE(NONE_14042_APPARITIONWS, TOT);
            NPC_REFRESH(NONE_14042_APPARITIONWS);
            TELEPORTNPCTOWP(56129, TOT);
            B_KILLNPC(56129);
            PAEVENT05ENCOUNTER = TRUE;
        };
    };
}

