func void EVENTSMANAGER_TRAP01() {
    if ((RND_TRAP_M1_CH2) == (2)) {
        if (((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING)) && ((FMQ001_INSTRUCTORRUN) == (0))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP01_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                if ((TRAP01_SPAWNED) == (FALSE)) {
                    PRINTD("Studio pod mostem wy g³upie chuje");
                    PRINTD("Pu³apka pod mostem gotowa");
                    WLD_INSERTNPC(52261, RNG_TRAP01_WAYPOINT);
                    WLD_INSERTNPC(52264, "PARTM1_TRAP_02");
                    WLD_INSERTNPC(52267, "PARTM1_TRAP_03");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP01_SPAWNED = 1;
                };
            };
        };
    };
}

