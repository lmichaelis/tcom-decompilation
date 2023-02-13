func void EVENTSMANAGER_TRAP63() {
    if ((TRAP63_SPAWNED) == (FALSE)) {
        if ((RND_TRAP02_M2_CH4) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP63_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                TRAP63_SPAWNED = TRUE;
                PRINTD("UchodŸca bije uchodŸcê!");
                WLD_INSERTNPC(52573, "PARTM2_PATH_03");
                WLD_INSERTNPC(52569, "PARTM2_CONTROL_12");
                WLD_INSERTNPC(52621, RNG_TRAP63_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

