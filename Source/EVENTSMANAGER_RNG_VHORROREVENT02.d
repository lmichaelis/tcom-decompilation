func void EVENTSMANAGER_RNG_VHORROREVENT02() {
    if ((RNG_VHORROREVENT02_SPAWNED) == (FALSE)) {
        if ((RNG_VHORROREVENT02) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_VHORROREVENT02_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_VHORROREVENT02_SPAWNED) == (FALSE)) {
                    PRINTD("Ona tu jest.");
                    WLD_INSERTNPC(59405, RNG_VHORROREVENT02_WAYPOINT);
                    RNG_VHORROREVENT02_SPAWNED = 1;
                };
            };
        };
    };
    if (((RNG_VHORROREVENT02_SPAWNED) == (TRUE)) && ((VHORROREVENT02ENCOUNTER) == (FALSE))) {
        if ((RNG_VHORROREVENT02_CONTROLLER()) == (TRUE)) {
            PRINTD("Odesz�a.");
            B_STARTOTHERROUTINE(NONE_14167_VOLFZACKENIGHTMARE, TOT);
            NPC_REFRESH(NONE_14167_VOLFZACKENIGHTMARE);
            TELEPORTNPCTOWP(59405, TOT);
            B_KILLNPC(59405);
            VHORROREVENT02ENCOUNTER = TRUE;
        };
    };
}

