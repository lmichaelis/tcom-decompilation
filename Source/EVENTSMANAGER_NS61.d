func void EVENTSMANAGER_NS61() {
    if ((RND_NS01_M8) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS61_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS61_SPAWNED) == (FALSE)) {
                PRINTD("Wania oszala³");
                PRINTD("w M8");
                WLD_INSERTNPC(55482, RNG_NS61_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS61_SPAWNED = 1;
            };
        };
    };
}

