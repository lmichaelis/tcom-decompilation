func void EVENTSMANAGER_NS62_NEW() {
    if ((RND_NS01_P2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS62_NEW_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS62_SPAWNED_NEW) == (FALSE)) {
                PRINTD("Dobry towar od kuriera");
                PRINTD("w parcie 6");
                WLD_INSERTNPC(0xd99a, RNG_NS62_NEW_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS62_SPAWNED_NEW = 1;
            };
        };
    };
}

