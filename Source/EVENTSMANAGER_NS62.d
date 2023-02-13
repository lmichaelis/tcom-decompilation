func void EVENTSMANAGER_NS62() {
    if ((RND_NS01_P6) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS62_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS62_SPAWNED) == (FALSE)) {
                PRINTD("Dobry towar od kuriera");
                PRINTD("w parcie 6");
                WLD_INSERTNPC(51070, RNG_NS62_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS62_SPAWNED = 1;
            };
        };
    };
}

