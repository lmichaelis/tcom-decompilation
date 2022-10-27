func void EVENTSMANAGER_NS13() {
    if ((RND_NS01_M4) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS13_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS13_SPAWNED) == (FALSE)) {
                PRINTD("Wina, wina, wina dajcie");
                PRINTD("W M4");
                WLD_INSERTNPC(0xd10e, RNG_NS13_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS13_SPAWNED = 1;
            };
        };
    };
}

