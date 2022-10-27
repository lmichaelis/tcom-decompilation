func void EVENTSMANAGER_NS23() {
    if ((RND_NS03_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS23_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS23_SPAWNED) == (FALSE)) {
                PRINTD("Staruszek odchwaœci³ trawnik (w parcie 12)");
                WLD_INSERTNPC(0xe195, RNG_NS23_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS23_SPAWNED = 1;
            };
        };
    };
}

