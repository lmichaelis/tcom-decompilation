func void EVENTSMANAGER_TRAP18() {
    if ((LOG_GETSTATUS(MIS_Q105)) != (LOG_RUNNING)) {
        if ((TRAP18_SPAWNED) == (FALSE)) {
            if ((RND_TRAP_P15_CH1) == (2)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP18_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                    TRAP18_SPAWNED = TRUE;
                    PRINTD("Bandzior chce od ciebie hajs (part 15)");
                    WLD_INSERTNPC(0xe2d2, RNG_TRAP18_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
        };
    };
}

