func void EVENTSMANAGER_RNG_SEVENT05() {
    if ((RNG_SEVENT05_S2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_SEVENT05_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
            if ((RNG_SEVENT05_SPAWNED) == (FALSE)) {
                PRINTD("Zjedz robala w kana³ach (S1)");
                WLD_INSERTNPC(0xe64e, RNG_SEVENT05_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_SEVENT05_SPAWNED = 1;
            };
        };
    };
}

