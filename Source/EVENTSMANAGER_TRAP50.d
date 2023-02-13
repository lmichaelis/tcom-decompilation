func void EVENTSMANAGER_TRAP50() {
    if ((TRAP50_SPAWNED) == (FALSE)) {
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (!(NPC_ISDEAD(NONE_7002_GETORYX)))) {
            if ((RND_TRAP_QA401_02) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP47A50_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                    TRAP50_SPAWNED = TRUE;
                    WLD_INSERTNPC(53159, RNG_TRAP47A50_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    PRINTD("Cz³owiek Getoryka w M4");
                };
            };
        };
    };
}

