func void EVENTSMANAGER_RNG_VHORROREVENT01() {
    if ((RNG_VHORROREVENT01_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT01) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT01_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT01_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(59402, RNG_VHORROREVENT01_WAYPOINT);
                    RNG_VHORROREVENT01_SPAWNED = 1;
                };
            };
        };
    };
    if (((RNG_VHORROREVENT01_SPAWNED) == (TRUE)) && ((VHORROREVENT01ENCOUNTER) == (FALSE))) {
        if ((RNG_VHORROREVENT01_CONTROLLER()) == (TRUE)) {
            PRINTD("Odesz³a.");
            B_STARTOTHERROUTINE(NONE_13759_VOLFZACKENIGHTMARE, TOT);
            NPC_REFRESH(NONE_13759_VOLFZACKENIGHTMARE);
            TELEPORTNPCTOWP(59402, TOT);
            B_KILLNPC(59402);
            VHORROREVENT01ENCOUNTER = TRUE;
        };
    };
}

