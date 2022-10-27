func void EVENTSMANAGER_NS18() {
    if ((RND_NS03_M5) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS18_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS18_SPAWNED) == (FALSE)) {
                PRINTD("Go³y facet pojawi³ siê w M5");
                WLD_INSERTNPC(0xd252, RNG_NS18_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS18_SPAWNED = 1;
            };
        };
    };
}

