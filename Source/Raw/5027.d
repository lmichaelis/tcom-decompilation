func void EVENTSMANAGER_TRAP47() {
    if ((TRAP47_SPAWNED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) {
            if (!(NPC_ISDEAD(MIL_6267_SALVI))) {
                if ((RND_TRAP_QM401_02) == (1)) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_TRAP47A50_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                        TRAP47_SPAWNED = TRUE;
                        WLD_INSERTNPC(0xd105, RNG_TRAP47A50_WAYPOINT);
                        RANDOMEVENT_SPAWNCOUNTER();
                        PRINTD("Cz³owiek salviego  w  m4");
                    };
                };
            };
        };
    };
}

