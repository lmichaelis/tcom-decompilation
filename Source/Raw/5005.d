func void EVENTSMANAGER_TRAP25() {
    if ((TRAP25_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P10_CH4) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP25_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP25_SPAWNED = TRUE;
                PRINTD("W parcie 10 dziadek nie potrzebuje magów wody ale ty ju¿ tak");
                RANDOMEVENT_SPAWNCOUNTER();
                WLD_INSERTNPC(0xdf90, RNG_TRAP25_WAYPOINT);
            };
        };
    };
}

