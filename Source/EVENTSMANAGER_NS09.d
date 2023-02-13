func void EVENTSMANAGER_NS09() {
    if ((RND_NS02_M6) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS09_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS09_SPAWNED) == (FALSE)) {
                PRINTD("Kalibracje trwaj¹ w M6");
                FF_APPLYONCEEXTGT(41913, 0, -(1));
                WLD_INSERTNPC(54419, RNG_NS09_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS09_SPAWNED = 1;
            };
        };
    };
}

