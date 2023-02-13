func void EVENTSMANAGER_TRAP42() {
    if ((TRAP42_SPAWNED) == (FALSE)) {
        if (((RND_TRAP_P16_CH5) == (1)) && ((SQ417_BLOCKRANDOMEVENTS) == (FALSE))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP42_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                PRINTD("UchodŸca przebieg³ przez bramê w Wilczym!");
                WLD_INSERTNPC(58373, RNG_TRAP42_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP42_SPAWNED = TRUE;
            };
        };
    };
}

