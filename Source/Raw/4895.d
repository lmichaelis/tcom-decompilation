func void EVENTSMANAGER_NS58() {
    if ((RND_NS03_P17) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS58_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS58_SPAWNED) == (FALSE)) {
                PRINTD("Scam w  p17");
                WLD_INSERTNPC(0xe622, RNG_NS58_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS58_SPAWNED = 1;
            };
        };
    };
}

