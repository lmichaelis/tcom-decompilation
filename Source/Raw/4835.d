func void EVENTSMANAGER_NS04() {
    if ((RND_NS01_M7) == (1)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS04_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS04_SPAWNED) == (FALSE)) {
                    PRINTD("Japka japka tanio japka");
                    PRINTD("W M7");
                    WLD_INSERTNPC(0xd878, RNG_NS04_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS04_SPAWNED = 1;
                };
            };
        };
    };
}

