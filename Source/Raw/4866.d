func void EVENTSMANAGER_NS34() {
    if ((RND_NS05_M5) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS34_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS34_SPAWNED) == (FALSE)) {
                PRINTD("Wêdrowny kupiec w m5");
                WLD_INSERTNPC(0xd25b, RNG_NS34_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS34_SPAWNED = 1;
            };
        };
    };
}

