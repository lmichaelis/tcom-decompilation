func void EVENTSMANAGER_RNG_VHORROREVENT06() {
    if ((RNG_VHORROREVENT06_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT06) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT06_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT06_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(59417, RNG_VHORROREVENT06_WAYPOINT);
                    RNG_VHORROREVENT06_SPAWNED = 1;
                };
            };
        };
    };
    if (((RNG_VHORROREVENT06_SPAWNED) == (TRUE)) && ((VHORROREVENT06ENCOUNTER) == (FALSE))) {
        if ((RNG_VHORROREVENT06_CONTROLLER()) == (TRUE)) {
            PRINTD("Odesz³a.");
            B_STARTOTHERROUTINE(NONE_14171_VOLFZACKENIGHTMARE, TOT);
            NPC_REFRESH(NONE_14171_VOLFZACKENIGHTMARE);
            TELEPORTNPCTOWP(59417, TOT);
            B_KILLNPC(59417);
            VHORROREVENT06ENCOUNTER = TRUE;
        };
    };
}

