func void EVENTSMANAGER_NS66() {
    if ((RND_NS05_M2) == (1)) {
        if (((LOG_GETSTATUS(MIS_Q308)) == (0)) || ((LOG_GETSTATUS(MIS_Q308)) == (LOG_SUCCESS))) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS66_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS66_SPAWNED) == (FALSE)) {
                    PRINTD("Hello, Potion Seller");
                    PRINTD("W M2");
                    WLD_INSERTNPC(52593, "PARTM2_PATH_EASTEREGG_TRAVELLER");
                    WLD_INSERTNPC(52596, RNG_NS66_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS66_SPAWNED = 1;
                };
            };
        };
    };
}

