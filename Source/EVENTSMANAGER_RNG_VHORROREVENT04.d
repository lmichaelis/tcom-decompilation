func void EVENTSMANAGER_RNG_VHORROREVENT04() {
    if ((RNG_VHORROREVENT04_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT04) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT04_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT04_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(59411, RNG_VHORROREVENT04_WAYPOINT);
                    RNG_VHORROREVENT04_SPAWNED = 1;
                };
            };
        };
    };
    if (((RNG_VHORROREVENT04_SPAWNED) == (TRUE)) && ((VHORROREVENT04ENCOUNTER) == (FALSE))) {
        if ((RNG_VHORROREVENT04_CONTROLLER()) == (TRUE)) {
            PRINTD("Odesz³a.");
            B_STARTOTHERROUTINE(NONE_14169_VOLFZACKENIGHTMARE, TOT);
            NPC_REFRESH(NONE_14169_VOLFZACKENIGHTMARE);
            TELEPORTNPCTOWP(59411, TOT);
            B_KILLNPC(59411);
            VHORROREVENT04ENCOUNTER = TRUE;
        };
    };
}

