func void EVENTSMANAGER_NS31() {
    if ((RND_NS04_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS31_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS31_SPAWNED) == (FALSE)) {
                PRINTD("Pete i jego szczur chc¹ sera");
                WLD_INSERTNPC(57775, RNG_NS31_WAYPOINT);
                WLD_INSERTNPC(50685, "VILLAGE_PATH_204");
                RANDOMEVENT_SPAWNCOUNTER();
                NS31_SPAWNED = 1;
            };
        };
    };
}

