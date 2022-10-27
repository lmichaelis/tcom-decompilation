func void EVENTSMANAGER_TRAP39() {
    if ((RND_TRAP_P15_CH5) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP39_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
            if ((TRAP39_SPAWNED) == (FALSE)) {
                PRINTD("Farmerka wo³a pomocy (wcale nie)");
                WLD_INSERTNPC(0xe2cc, RNG_TRAP39_WAYPOINT);
                WLD_INSERTNPC(0xe2cf, RNG_TRAP39_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP39_SPAWNED = 1;
            };
        };
    };
}

