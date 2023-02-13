func void EVENTSMANAGER_TRAP06() {
    if ((RND_TRAP_M8_CH4) == (2)) {
        if ((LOG_GETSTATUS(MIS_Q309)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP06_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                if ((TRAP06_SPAWNED) == (FALSE)) {
                    PRINTD("Cmentarz jest zaskakuj¹co ¿ywy PART A");
                    WLD_INSERTNPC(55468, "PARTM8_GRAVEROBBER_07");
                    WLD_INSERTNPC(55466, "PARTM8_GRAVEROBBER_09");
                    WLD_INSERTNPC(55464, "PARTM8_GRAVEROBBER_04A");
                    WLD_INSERTNPC(55462, "PARTM8_GRAVEROBBER_02");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP06_SPAWNED = 1;
                };
            };
        };
    };
}

