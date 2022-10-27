func void EVENTSMANAGER_NS06() {
    if ((RND_NS02_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS06_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((WLD_ISRAINING()) == (FALSE)) {
                if ((NS06_SPAWNED) == (FALSE)) {
                    PRINTD("Starszego pana suszy w M3");
                    WLD_INSERTNPC(0xcf9c, RNG_NS06_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS06_SPAWNED = 1;
                };
            };
        };
    };
}

