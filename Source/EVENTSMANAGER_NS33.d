func void EVENTSMANAGER_NS33() {
    if ((RND_NS04_M2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS33_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS33_SPAWNED) == (FALSE)) {
                PRINTD("W m2 pojawi³sie wêdrowny kupiec");
                WLD_INSERTNPC(52625, RNG_NS33_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS33_SPAWNED = 1;
            };
        };
    };
}

