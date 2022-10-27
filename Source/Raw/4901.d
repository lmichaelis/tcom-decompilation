func void EVENTSMANAGER_NS63() {
    if ((RND_NS01_P9) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS63_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS63_SPAWNED) == (FALSE)) {
                PRINTD("Szukam pracy");
                PRINTD("w parcie 9");
                WLD_INSERTNPC(0xdf0a, RNG_NS63_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS63_SPAWNED = 1;
            };
        };
    };
}

