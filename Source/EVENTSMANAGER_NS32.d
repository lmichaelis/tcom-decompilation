func void EVENTSMANAGER_NS32() {
    if ((RND_NS05_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS32_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS32_SPAWNED) == (FALSE)) {
                PRINTD("Wêdrowny kupiec jest w Silbach");
                WLD_INSERTNPC(57814, RNG_NS32_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS32_SPAWNED = TRUE;
            };
        };
    };
}

