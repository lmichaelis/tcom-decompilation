func void EVENTSMANAGER_NS40() {
    if ((RND_NS06_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS40_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS40_SPAWNED) == (FALSE)) {
                PRINTD("Czym jest dynia?");
                WLD_INSERTNPC(0xe19e, RNG_NS40_WAYPOINT);
                WLD_INSERTNPC(0xe19b, "VILLAGE_PATH_207");
                RANDOMEVENT_SPAWNCOUNTER();
                NS40_SPAWNED = TRUE;
            };
        };
    };
}

