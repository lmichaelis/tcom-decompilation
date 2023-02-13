func void EVENTSMANAGER_NS17() {
    if ((RND_NS02_M5) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS17_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS17_SPAWNED) == (FALSE)) {
                PRINTD("B³azen pojawi³ siê w M5");
                WLD_INSERTNPC(53878, RNG_NS17_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS17_SPAWNED = 1;
            };
        };
    };
}

