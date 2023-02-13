func void EVENTSMANAGER_TRAP46() {
    if ((TRAP46_SPAWNED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) {
            if (!(NPC_ISDEAD(MIL_6267_SALVI))) {
                if ((RND_TRAP_QM401_01) == (1)) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_TRAP46A49_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                        TRAP46_SPAWNED = TRUE;
                        WLD_INSERTNPC(52277, RNG_TRAP46A49_WAYPOINT);
                        RANDOMEVENT_SPAWNCOUNTER();
                        PRINTD("Red Spy in the base. (cz³owiek salviego m1)");
                    };
                };
            };
        };
    };
}

