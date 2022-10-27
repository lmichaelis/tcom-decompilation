func void EVENTSMANAGER_RNG_VHORROREVENT05() {
    if ((RNG_VHORROREVENT05_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT05) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT05_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT05_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(0xe816, RNG_VHORROREVENT05_WAYPOINT);
                    RNG_VHORROREVENT05_SPAWNED = 1;
                };
            };
        };
    };
    if (((RNG_VHORROREVENT05_SPAWNED) == (TRUE)) && ((VHORROREVENT05ENCOUNTER) == (FALSE))) {
        if ((RNG_VHORROREVENT05_CONTROLLER()) == (TRUE)) {
            PRINTD("Odesz³a.");
            B_STARTOTHERROUTINE(NONE_14170_VOLFZACKENIGHTMARE, TOT);
            NPC_REFRESH(NONE_14170_VOLFZACKENIGHTMARE);
            TELEPORTNPCTOWP(0xe816, TOT);
            B_KILLNPC(0xe816);
            VHORROREVENT05ENCOUNTER = TRUE;
        };
    };
}

