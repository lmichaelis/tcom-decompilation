func void EVENTSMANAGER_NS51() {
    if ((RND_NS01_P7) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS51_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS51_SPAWNED) == (FALSE)) {
                PRINTD("Handlarz w P7");
                WLD_INSERTNPC(0xdca6, RNG_NS51_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS51_SPAWNED = 1;
            };
        };
    };
}

