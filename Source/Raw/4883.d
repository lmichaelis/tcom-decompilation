func void EVENTSMANAGER_NS46() {
    if ((RND_NS02_P15) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS46_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS46_SPAWNED) == (FALSE)) {
                PRINTD("Wzajemnie. W parcie 15");
                WLD_INSERTNPC(0xe2e2, RNG_NS46_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS46_SPAWNED = 1;
            };
        };
    };
}

