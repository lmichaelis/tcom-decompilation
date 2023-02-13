func void EVENTSMANAGER_NS39() {
    if ((RND_NS05_M6) == (1)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS39_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS39_SPAWNED) == (FALSE)) {
                    PRINTD("Ryba œmierdzi w M6");
                    WLD_INSERTNPC(54778, RNG_NS39_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS39_SPAWNED = 1;
                };
            };
        };
    };
}

