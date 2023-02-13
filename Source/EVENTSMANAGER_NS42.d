func void EVENTSMANAGER_NS42() {
    if ((RND_NS01_P8) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS42_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS42_SPAWNED) == (FALSE)) {
                PRINTD("Mario Cart w parcie 8!");
                WLD_INSERTNPC(56764, RNG_NS42_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS42_SPAWNED = 1;
            };
        };
    };
}

