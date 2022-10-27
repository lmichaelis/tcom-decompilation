func void EVENTSMANAGER_TRAP51() {
    if ((TRAP51_SPAWNED) == (FALSE)) {
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (!(NPC_ISDEAD(NONE_7002_GETORYX)))) {
            if ((RND_TRAP_QA401_03) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP48A51_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                    TRAP51_SPAWNED = TRUE;
                    WLD_INSERTNPC(0xcf70, RNG_TRAP48A51_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    PRINTD("Cz³owiek Getoryka w M3");
                };
            };
        };
    };
}

