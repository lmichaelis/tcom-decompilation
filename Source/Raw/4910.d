func void EVENTSMANAGER_NS70() {
    if ((RND_NS08_P12) == (1)) {
        if ((LOG_GETSTATUS(MIS_Q201)) > (0)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS70_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                if ((NS70_SPAWNED) == (FALSE)) {
                    PRINTD("Zadanie, tak nie czy jak?");
                    WLD_INSERTNPC(0xe1a3, RNG_NS70_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS70_SPAWNED = 1;
                };
            };
        };
    };
}

