func void EVENTSMANAGER_NS43() {
    if ((RND_NS02_P17) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS43_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS43_SPAWNED) == (FALSE)) {
                PRINTD("Mit potwierdzony  w p17");
                WLD_INSERTNPC(0xe614, RNG_NS43_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS43_SPAWNED = 1;
            };
        };
    };
}

