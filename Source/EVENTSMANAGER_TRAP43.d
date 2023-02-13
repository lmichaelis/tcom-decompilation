func void EVENTSMANAGER_TRAP43() {
    if ((RND_TRAP_P5_CH4) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP43_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((TRAP43_SPAWNED) == (FALSE)) {
                TRAP43_SPAWNED = TRUE;
                PRINTD("Armia nieumar³ych walczy w parcie 5");
                WLD_INSERTNPC(50115, RNG_TRAP43_WAYPOINT);
                WLD_INSERTNPC(50115, RNG_TRAP43_WAYPOINT);
                WLD_INSERTNPC(50116, RNG_TRAP43_WAYPOINT);
                WLD_INSERTNPC(50863, "PART5_PATH_13");
                WLD_INSERTNPC(50863, "PART5_PATH_13");
                WLD_INSERTNPC(50863, "PART5_PATH_13");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

