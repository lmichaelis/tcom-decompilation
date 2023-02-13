func void EVENTSMANAGER_NS07() {
    if ((RND_NS02_M2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS07_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS07_SPAWNED) == (FALSE)) {
                PRINTD("Zupa by³a za s³ona w M2");
                WLD_INSERTNPC(52618, RNG_NS07_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS07_SPAWNED = 1;
            };
        };
    };
}

