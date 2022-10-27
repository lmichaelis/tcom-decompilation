func void EVENTSMANAGER_NS02() {
    if ((RND_NS01_M2) == (1)) {
        if ((FMQ001_INSTRUCTORRUN) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS02_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS02_SPAWNED) == (FALSE)) {
                    PRINTD("Szaleniec biegnie daæ Ci grzyby");
                    PRINTD("W M2");
                    WLD_INSERTNPC(0xcd86, RNG_NS02_WAYPOINT);
                    NS02_SPAWNED = TRUE;
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
        };
    };
}

