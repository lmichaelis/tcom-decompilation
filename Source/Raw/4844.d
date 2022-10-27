func void EVENTSMANAGER_NS14() {
    if ((RND_NS01_P4) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS14_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS14_SPAWNED) == (FALSE)) {
                PRINTD("Jestem Tu Nowy w parcie 4");
                WLD_INSERTNPC(0xdac2, RNG_NS14_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS14_SPAWNED = 1;
            };
        };
    };
}

