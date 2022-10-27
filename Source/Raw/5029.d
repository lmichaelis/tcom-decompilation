func void EVENTSMANAGER_TRAP49() {
    if ((TRAP49_SPAWNED) == (FALSE)) {
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (!(NPC_ISDEAD(NONE_7002_GETORYX)))) {
            if ((RND_TRAP_QA401_01) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP46A49_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                    TRAP49_SPAWNED = TRUE;
                    WLD_INSERTNPC(0xcc38, RNG_TRAP46A49_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    PRINTD("Cz³owiek Getoryka w M1");
                };
            };
        };
    };
}

