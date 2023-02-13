func void EVENTSMANAGER_NS44() {
    if ((RND_NS04_P16) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS44_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if (((NS44_SPAWNED) == (FALSE)) && ((SQ417_BLOCKRANDOMEVENTS) == (FALSE))) {
                PRINTD("AWOOOOO w parcie 16");
                WLD_INSERTNPC(58388, RNG_NS44_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS44_SPAWNED = 1;
            };
        };
    };
}

