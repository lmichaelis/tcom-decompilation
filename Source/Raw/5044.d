func void EVENTSMANAGER_TRAP63() {
    if ((TRAP63_SPAWNED) == (FALSE)) {
        if ((RND_TRAP02_M2_CH4) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP63_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                TRAP63_SPAWNED = TRUE;
                PRINTD("UchodŸca bije uchodŸcê!");
                WLD_INSERTNPC(0xcd5d, "PARTM2_PATH_03");
                WLD_INSERTNPC(0xcd59, "PARTM2_CONTROL_12");
                WLD_INSERTNPC(0xcd8d, RNG_TRAP63_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

