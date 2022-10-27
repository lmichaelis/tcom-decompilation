func void EVENTSMANAGER_NS16() {
    if ((RND_NS01_P16) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS16_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if (((NS16_SPAWNED) == (FALSE)) && ((SQ417_BLOCKRANDOMEVENTS) == (FALSE))) {
                PRINTD("Bardzo pijany wilczy syn w parcie 16");
                WLD_INSERTNPC(0xe407, RNG_NS16_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS16_SPAWNED = 1;
            };
        };
    };
}

