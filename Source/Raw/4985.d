func void EVENTSMANAGER_TRAP07() {
    if ((RND_TRAP03_M3_CH2) == (2)) {
        if ((LOG_GETSTATUS(MIS_FAQ002)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP07_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
                if ((TRAP07_SPAWNED) == (FALSE)) {
                    PRINTD("Afterparty po wyrwaniu chwasta");
                    WLD_INSERTNPC(0xcf58, RNG_TRAP07_WAYPOINT);
                    WLD_INSERTNPC(0xcf5b, "PARTM3_REFUGEE_TRAP01");
                    WLD_INSERTNPC(0xcf5e, "PARTM3_REFUGEE_TRAP02");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP07_SPAWNED = 1;
                };
            };
        };
    };
}

