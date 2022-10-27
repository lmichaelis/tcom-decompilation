func void EVENTSMANAGER_TRAP56() {
    if ((TRAP56_SPAWNED) == (0)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP56A_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
            if ((((RND_TRAP_P4_CH1) == (1)) || ((RND_TRAP_P4_CH1) == (2))) || ((RND_TRAP_P4_CH1) == (3))) {
                TRAP56_SPAWNED = 1;
                PRINTD("Bandyta numer jeden gotowy (w parcie 4)");
                WLD_INSERTNPC(0xdaa8, RNG_TRAP56A_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
    if ((TRAP56_SPAWNED) == (1)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP56B_WAYPOINT)) <= (RNG_RADIUS_FAR)) && (NPC_ISDEAD(BDT_13763_BANDIT))) {
            if ((((RND_TRAP_P4_CH1) == (7)) || ((RND_TRAP_P4_CH1) == (8))) || ((RND_TRAP_P4_CH1) == (9))) {
                PRINTD("Bandyta numer dwa gotowy (w parcie 4)");
                WLD_INSERTNPC(0xdaaa, RNG_TRAP56B_WAYPOINT);
                TRAP56_SPAWNED = 2;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
    if ((TRAP56_SPAWNED) == (2)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP56C_WAYPOINT)) <= (RNG_RADIUS_FAR)) && (NPC_ISDEAD(BDT_13764_BANDIT))) {
            if ((((RND_TRAP_P4_CH1) == (12)) || ((RND_TRAP_P4_CH1) == (13))) || ((RND_TRAP_P4_CH1) == (14))) {
                WLD_INSERTNPC(0xdaac, RNG_TRAP56C_WAYPOINT);
                TRAP56_SPAWNED = 3;
                PRINTD("Bandyta numer trzy gotowy (w parcie 4)");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

