func void EVENTSMANAGER_NS29() {
    if ((RND_NS03_M2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS29_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS29_SPAWNED) == (FALSE)) {
                PRINTD("Leniwy stra¿nik ukrywa siê w m2");
                WLD_INSERTNPC(52577, RNG_NS29_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS29_SPAWNED = 1;
            };
        };
    };
}

