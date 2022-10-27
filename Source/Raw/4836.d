func void EVENTSMANAGER_NS05() {
    if ((RND_NS02_M7) == (1)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS05_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS05_SPAWNED) == (FALSE)) {
                    PRINTD("Starsza pani szuka kawalera");
                    PRINTD("W M7");
                    WLD_INSERTNPC(0xd87b, RNG_NS05_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS05_SPAWNED = 1;
                };
            };
        };
    };
}

