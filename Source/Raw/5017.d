func void EVENTSMANAGER_TRAP37() {
    if ((RND_TRAP_P13_CH2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP37_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
            if ((TRAP37_SPAWNED) == (FALSE)) {
                PRINTD("Bandyta w parcie 13 idzie...");
                TRAP37_SPAWNED = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
                WLD_INSERTNPC(0xe20d, RNG_TRAP37_WAYPOINT);
            };
        };
    };
}

