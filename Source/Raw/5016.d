func void EVENTSMANAGER_TRAP36() {
    if ((TRAP36_SPAWNED) == (FALSE)) {
        if ((RND_TRAP02_P12_CH1) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP36_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                TRAP36_SPAWNED = TRUE;
                PRINTD("Jakiœ wsiok ma do ciebie problem man (w parcie 12)");
                WLD_INSERTNPC(0xe198, RNG_TRAP36_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

