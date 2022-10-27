func void EVENTSMANAGER_RNG_SEVENT02() {
    if ((RNG_SEVENT02_S2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_SEVENT02_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
            if ((RNG_SEVENT02_SPAWNED) == (FALSE)) {
                PRINTD("Zjedz nietopyra w kana³ach (S2)");
                WLD_INSERTNPC(0xe691, RNG_SEVENT02_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_SEVENT02_SPAWNED = 1;
            };
        };
    };
}

