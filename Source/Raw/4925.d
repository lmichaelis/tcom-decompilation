func void EVENTSMANAGER_RNG_PAEVENT01_REMOVE() {
    if (((RNG_PAEVENT01_SPAWNED) == (TRUE)) && ((PAEVENT01ENCOUNTER) == (FALSE))) {
        if ((NPC_GETDISTTONPC(HERO, NONE_14038_APPARITIONWS)) <= (RNG_RADIUS_VERYCLOSE)) {
            PRINTD("Odszed�.");
            B_STARTOTHERROUTINE(NONE_14038_APPARITIONWS, TOT);
            NPC_REFRESH(NONE_14038_APPARITIONWS);
            TELEPORTNPCTOWP(0xdb35, TOT);
            B_KILLNPC(0xdb35);
            PAEVENT01ENCOUNTER = TRUE;
        };
    };
}

