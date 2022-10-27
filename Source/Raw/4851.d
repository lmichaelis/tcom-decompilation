func void EVENTSMANAGER_NS19() {
    if ((RND_NS02_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS19_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS19_SPAWNED) == (FALSE)) {
                PRINTD("O nie! To Wrzód 2.0!");
                WLD_INSERTNPC(0xe1c2, RNG_NS19_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS19_SPAWNED = 1;
            };
        };
    };
}

