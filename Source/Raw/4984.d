func void EVENTSMANAGER_TRAP06B() {
    if ((RND_TRAPB_M8_CH4) == (2)) {
        if ((LOG_GETSTATUS(MIS_Q309)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP06_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                if ((TRAP06B_SPAWNED) == (FALSE)) {
                    PRINTD("Cmentarz jest zaskakuj¹co ¿ywy PART B");
                    WLD_INSERTNPC(0xd8b4, "PARTM8_PATH_09");
                    WLD_INSERTNPC(0xd8b2, "PARTM8_GRAVEROBBER_10");
                    WLD_INSERTNPC(0xd8b0, "PARTM8_PATH_04");
                    WLD_INSERTNPC(0xd8ae, "PARTM8_GRAVEROBBER_08");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP06B_SPAWNED = 1;
                };
            };
        };
    };
}

