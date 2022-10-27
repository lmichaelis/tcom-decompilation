func void EVENTSMANAGER_RNG_SEVENT06() {
    if ((RNG_SEVENT06_S2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_SEVENT06_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
            if ((RNG_SEVENT06_SPAWNED) == (FALSE)) {
                PRINTD("Walcz w kana³ach (S1)");
                WLD_INSERTNPC(0xe651, RNG_SEVENT06_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_SEVENT06_SPAWNED = 1;
            };
        };
    };
}

