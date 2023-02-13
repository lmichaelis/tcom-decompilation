func void EVENTSMANAGER_TRAP26() {
    if ((TRAP26_SPAWNED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if (((NPC_GETDISTTOWP(HERO, RNG_TRAP26_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) && ((RND_TRAP_M7_CH5) == (1))) {
                TRAP26_SPAWNED = TRUE;
                WLD_INSERTNPC(55374, RNG_TRAP26_WAYPOINT);
                WLD_INSERTNPC(55376, "SLUMS_TRAP_07");
                WLD_INSERTNPC(55378, "SLUMS_TRAP_05");
                RANDOMEVENT_SPAWNCOUNTER();
                PRINTD("w k¹cie w M7 siedz¹ uchodŸcy");
            };
        };
    };
}

