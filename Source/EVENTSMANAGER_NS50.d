func void EVENTSMANAGER_NS50() {
    if ((RND_NS04_M1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS50_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS50_SPAWNED) == (FALSE)) {
                PRINTD("Kupiec 2 w M1");
                WLD_INSERTNPC(52296, RNG_NS50_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS50_SPAWNED = 1;
            };
        };
    };
}

