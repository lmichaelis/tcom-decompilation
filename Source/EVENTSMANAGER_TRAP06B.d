func void EVENTSMANAGER_TRAP06B() {
    if ((RND_TRAPB_M8_CH4) == (2)) {
        if ((LOG_GETSTATUS(MIS_Q309)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP06_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                if ((TRAP06B_SPAWNED) == (FALSE)) {
                    PRINTD("Cmentarz jest zaskakuj�co �ywy PART B");
                    WLD_INSERTNPC(55476, "PARTM8_PATH_09");
                    WLD_INSERTNPC(55474, "PARTM8_GRAVEROBBER_10");
                    WLD_INSERTNPC(55472, "PARTM8_PATH_04");
                    WLD_INSERTNPC(55470, "PARTM8_GRAVEROBBER_08");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP06B_SPAWNED = 1;
                };
            };
        };
    };
}

