func void EVENTSMANAGER_NS48() {
    if ((RND_NS07_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS48_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS48_SPAWNED) == (FALSE)) {
                PRINTD("Kupiec w parcie 12 (rozdzia³ 4)");
                WLD_INSERTNPC(57817, RNG_NS48_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS48_SPAWNED = 1;
            };
        };
    };
}

