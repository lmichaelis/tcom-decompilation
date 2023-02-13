func void EVENTSMANAGER_NS55() {
    if ((RND_NS06_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS55_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS55_SPAWNED) == (FALSE)) {
                PRINTD("Mam coœ na twarzy?");
                PRINTD("W M3");
                WLD_INSERTNPC(53138, RNG_NS55_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS55_SPAWNED = 1;
            };
        };
    };
}

