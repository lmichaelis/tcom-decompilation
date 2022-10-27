func void EVENTSMANAGER_TRAP09() {
    if ((RND_TRAP_M8_CH2) == (2)) {
        if ((LOG_GETSTATUS(MIS_Q309)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP09_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                if ((TRAP09_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ kopci za koœcio³em");
                    WLD_INSERTNPC(0xd8b8, "PARTM8_PATH_118");
                    WLD_INSERTNPC(0xd8b6, RNG_TRAP09_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP09_SPAWNED = 1;
                };
            };
        };
    };
}

