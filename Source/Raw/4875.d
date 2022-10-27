func void EVENTSMANAGER_NS41() {
    if ((RND_NS01_P17) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS41_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS41_SPAWNED) == (FALSE)) {
                PRINTD("To wcale nie Petra  w p17");
                WLD_INSERTNPC(0xe618, RNG_NS41_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS41_SPAWNED = 1;
            };
        };
    };
}

