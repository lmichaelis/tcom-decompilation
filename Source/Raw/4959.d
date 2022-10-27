func void EVENTSMANAGER_RNG_VHORROREVENT01() {
    if ((RNG_VHORROREVENT01_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT01) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT01_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT01_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(0xe80a, RNG_VHORROREVENT01_WAYPOINT);
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
            TELEPORTNPCTOWP(0xe80a, TOT);
            B_KILLNPC(0xe80a);
            VHORROREVENT01ENCOUNTER = TRUE;
        };
    };
}

