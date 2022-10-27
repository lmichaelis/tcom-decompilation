func void EVENTSMANAGER_NS52() {
    if ((RND_NS01_P10) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS52_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS52_SPAWNED) == (FALSE)) {
                PRINTD("Handlarz w P10");
                WLD_INSERTNPC(0xdf92, RNG_NS52_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS52_SPAWNED = 1;
            };
        };
    };
}

