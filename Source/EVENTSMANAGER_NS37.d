func void EVENTSMANAGER_NS37() {
    if ((RND_NS03_P16) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS37_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if (((NS37_SPAWNED) == (FALSE)) && ((SQ417_BLOCKRANDOMEVENTS) == (FALSE))) {
                PRINTD("Podnieœ topora w parcie 16");
                WLD_INSERTNPC(58378, RNG_NS37_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS37_SPAWNED = 1;
            };
        };
    };
}

