func void EVENTSMANAGER_NS57() {
    if ((RND_NS06_M6) == (1)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS57_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS57_SPAWNED) == (FALSE)) {
                    PRINTD("Rybka, rybka");
                    PRINTD("W M6");
                    WLD_INSERTNPC(0xd5fd, RNG_NS57_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS57_SPAWNED = 1;
                };
            };
        };
    };
}

