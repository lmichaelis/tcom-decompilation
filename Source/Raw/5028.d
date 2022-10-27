func void EVENTSMANAGER_TRAP48() {
    if ((TRAP48_SPAWNED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) {
            if (!(NPC_ISDEAD(MIL_6267_SALVI))) {
                if ((RND_TRAP_QM401_03) == (1)) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_TRAP48A51_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                        TRAP48_SPAWNED = TRUE;
                        WLD_INSERTNPC(0xcf6d, RNG_TRAP48A51_WAYPOINT);
                        RANDOMEVENT_SPAWNCOUNTER();
                        PRINTD("Cz³owiek salviego w m3");
                    };
                };
            };
        };
    };
}

