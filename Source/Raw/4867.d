func void EVENTSMANAGER_NS35() {
    if ((RND_NS02_P16) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS35_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS35_SPAWNED) == (FALSE)) {
                PRINTD("Kupiec w parcie 16");
                WLD_INSERTNPC(0xe417, RNG_NS35_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS35_SPAWNED = 1;
            };
        };
    };
}

