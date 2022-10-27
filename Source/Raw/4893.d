func void EVENTSMANAGER_NS56() {
    if ((RND_NS07_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS56_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS56_SPAWNED) == (FALSE)) {
                PRINTD("Kowal w parcie m3 (rozdzia³ 4)");
                WLD_INSERTNPC(0xcf73, "PARTM3_PATH_262");
                RANDOMEVENT_SPAWNCOUNTER();
                NS56_SPAWNED = 1;
            };
        };
    };
}

