func void EVENTSMANAGER_NS24() {
    if ((RND_NS03_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS24_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS24_SPAWNED) == (FALSE)) {
                PRINTD("To na pewno dobry deal");
                PRINTD("W M3");
                WLD_INSERTNPC(0xcf7b, RNG_NS24_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS24_SPAWNED = 1;
            };
        };
    };
}

