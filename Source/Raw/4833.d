func void EVENTSMANAGER_NS03() {
    if ((RND_NS01_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS03_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS03_SPAWNED) == (FALSE)) {
                PRINTD("Przygoda quest reference");
                PRINTD("W M3");
                WLD_INSERTNPC(0xcf76, RNG_NS03_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS03_SPAWNED = TRUE;
            };
        };
    };
}

