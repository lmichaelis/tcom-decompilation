func void EVENTSMANAGER_NS08() {
    if ((RND_NS01_M1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS08_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS08_SPAWNED) == (FALSE)) {
                PRINTD("Podrap mnie po plecach");
                PRINTD("W M1");
                WLD_INSERTNPC(52287, RNG_NS08_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS08_SPAWNED = 1;
            };
        };
    };
}

