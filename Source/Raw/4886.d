func void EVENTSMANAGER_NS49() {
    if ((RND_NS03_M1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS49_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS49_SPAWNED) == (FALSE)) {
                PRINTD("Kupiec w M1");
                WLD_INSERTNPC(0xcc45, RNG_NS49_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS49_SPAWNED = 1;
            };
        };
    };
}

