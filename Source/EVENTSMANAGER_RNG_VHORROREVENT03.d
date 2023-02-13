func void EVENTSMANAGER_RNG_VHORROREVENT03() {
    if ((RNG_VHORROREVENT03_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT03) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT03_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT03_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(59408, RNG_VHORROREVENT03_WAYPOINT);
                    RNG_VHORROREVENT03_SPAWNED = 1;
                };
            };
        };
    };
    if (((RNG_VHORROREVENT03_SPAWNED) == (TRUE)) && ((VHORROREVENT03ENCOUNTER) == (FALSE))) {
        if ((RNG_VHORROREVENT03_CONTROLLER()) == (TRUE)) {
            PRINTD("Odesz³a.");
            B_STARTOTHERROUTINE(NONE_14168_VOLFZACKENIGHTMARE, TOT);
            NPC_REFRESH(NONE_14168_VOLFZACKENIGHTMARE);
            TELEPORTNPCTOWP(59408, TOT);
            B_KILLNPC(59408);
            VHORROREVENT03ENCOUNTER = TRUE;
        };
    };
}

