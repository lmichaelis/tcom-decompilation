func void EVENTSMANAGER_TRAP62() {
    if ((TRAP62_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_M4_CH4) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP62_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                TRAP62_SPAWNED = TRUE;
                PRINTD("Araxos bije uchod�c�!");
                WLD_INSERTNPC(53157, RNG_TRAP62_WAYPOINT);
                WLD_INSERTNPC(53220, RNG_TRAP62_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

