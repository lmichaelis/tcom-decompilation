func void EVENTSMANAGER_RNG_SEVENT04() {
    if ((RNG_SEVENT02_S1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_SEVENT04_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
            if ((RNG_SEVENT04_SPAWNED) == (FALSE)) {
                PRINTD("To ju¿ koniec");
                WLD_INSERTNPC(58956, RNG_SEVENT04_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_SEVENT04_SPAWNED = 1;
            };
        };
    };
}

