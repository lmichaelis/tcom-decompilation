func void EVENTSMANAGER_TRAP64() {
    if ((LOG_GETSTATUS(MIS_Q206)) != (LOG_RUNNING)) {
        if ((TRAP64_SPAWNED) == (FALSE)) {
            if ((RND_TRAP_P1_CH1) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP64_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                    TRAP64_SPAWNED = TRUE;
                    PRINTD("Ty z³odzieju! (part 1)");
                    WLD_INSERTNPC(55644, RNG_TRAP64_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
        };
    };
}

