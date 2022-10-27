func void EVENTSMANAGER_NS38() {
    if ((RND_NS01_P15) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS38_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS38_SPAWNED) == (FALSE)) {
                PRINTD("Wilczy synowie w parcie 15");
                WLD_INSERTNPC(0xe2dc, RNG_NS38_WAYPOINT);
                WLD_INSERTNPC(0xe2df, "PART15_PATH_358B");
                RANDOMEVENT_SPAWNCOUNTER();
                NS38_SPAWNED = 1;
            };
        };
    };
}

