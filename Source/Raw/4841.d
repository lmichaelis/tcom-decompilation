func void EVENTSMANAGER_NS10() {
    if ((RND_NS03_M6) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS10_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS10_SPAWNED) == (FALSE)) {
                PRINTD("Zasadniczo nie sex. Tak czy tak?");
                PRINTD("W M6");
                WLD_INSERTNPC(0xd5e5, RNG_NS10_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS10_SPAWNED = 1;
            };
        };
    };
}

