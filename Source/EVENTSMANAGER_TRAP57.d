func void EVENTSMANAGER_TRAP57() {
    if ((TRAP57_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_M3_CH3) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP57_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP57_SPAWNED = TRUE;
                PRINTD("Dawno nie by³o bezdomnych (m3)");
                WLD_INSERTNPC(53141, RNG_TRAP57_WAYPOINT);
                WLD_INSERTNPC(53143, "PARTM3_PATH_270");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

