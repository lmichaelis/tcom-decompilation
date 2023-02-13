func void EVENTSMANAGER_NS36() {
    if ((RND_NS02_P11) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS36_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS36_SPAWNED) == (FALSE)) {
                PRINTD("Przeklête puchary w parcie 11");
                WLD_INSERTNPC(57293, RNG_NS36_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS36_SPAWNED = TRUE;
            };
        };
    };
}

