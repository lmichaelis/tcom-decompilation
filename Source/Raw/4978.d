func void EVENTSMANAGER_TRAP02() {
    if ((RND_TRAP_M3_CH2) == (1)) {
        if ((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP02_WAYPOINT)) <= (RNG_RADIUS_VERYFAR)) {
                if ((TRAP02_SPAWNED) == (FALSE)) {
                    PRINTD("Niespodzianka za rogiem w M3");
                    WLD_INSERTNPC(0xcf55, RNG_TRAP02_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP02_SPAWNED = 1;
                };
            };
        };
    };
}

