func void EVENTSMANAGER_NS60() {
    if ((RND_NS08_M6) == (1)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS60_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                if ((NS60_SPAWNED) == (FALSE)) {
                    PRINTD("Wdowi grosz");
                    PRINTD("w M6");
                    WLD_INSERTNPC(0xd605, RNG_NS60_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS60_SPAWNED = 1;
                };
            };
        };
    };
}

