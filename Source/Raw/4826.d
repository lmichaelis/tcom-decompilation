func void EVENTSMANAGER_CULUSSPAWNP1() {
    if ((TRAP61_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_CULUS_SLUMS) == (1)) {
            if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP61_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE)) {
                    WLD_INSERTNPC(0xd70c, RNG_TRAP61_WAYPOINT);
                    PRINTD("Culus po raz pierwszy");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP61_SPAWNED = TRUE;
                };
            };
        };
    };
}

