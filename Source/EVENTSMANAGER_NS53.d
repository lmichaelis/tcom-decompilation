func void EVENTSMANAGER_NS53() {
    if ((RND_NS02_P8) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS53_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS53_SPAWNED) == (FALSE)) {
                PRINTD("Handel w parcie 8!");
                WLD_INSERTNPC(56776, RNG_NS53_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS53_SPAWNED = 1;
            };
        };
    };
}

