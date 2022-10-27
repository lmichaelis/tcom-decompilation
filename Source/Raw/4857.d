func void EVENTSMANAGER_NS25() {
    if ((RND_NS04_M6) == (1)) {
        if (((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_KQ404)) != (LOG_RUNNING))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS25_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS25_SPAWNED) == (FALSE)) {
                    PRINTD("Papier, kamieñ, no¿yce w M6");
                    WLD_INSERTNPC(0xd618, RNG_NS25_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS25_SPAWNED = 1;
                };
            };
        };
    };
}

