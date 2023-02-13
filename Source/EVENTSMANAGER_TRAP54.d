func void EVENTSMANAGER_TRAP54() {
    if ((TRAP54_SPAWNED) == (1)) {
        if ((RND_TRAP02_P7_CH3) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP54_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP54_SPAWNED = 2;
                PRINTD("Bandyta robi tup tup tup!");
                WLD_INSERTNPC(56481, RNG_TRAP54_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

