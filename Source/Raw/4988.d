func void EVENTSMANAGER_TRAP10() {
    if ((RND_TRAP_M6_CH2) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP10_WAYPOINT)) <= (RNG_RADIUS_MORETHENNORMAL)) {
            if (((LOG_GETSTATUS(MIS_QA302)) != (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING))) {
                if ((TRAP10_SPAWNED) == (FALSE)) {
                    PRINTD("Za hangarem w porcie siedz¹ zbiry");
                    WLD_INSERTNPC(0xd5f1, "HARBOUR_PATH_258_LEAN");
                    WLD_INSERTNPC(0xd5f4, "HARBOUR_PATH_258_SLAV");
                    WLD_INSERTNPC(0xd5f7, "HARBOUR_PATH_258_SLAV02");
                    RANDOMEVENT_SPAWNCOUNTER();
                    TRAP10_SPAWNED = 1;
                };
            };
        };
    };
}

