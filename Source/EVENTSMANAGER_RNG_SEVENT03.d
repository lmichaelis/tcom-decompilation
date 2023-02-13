func void EVENTSMANAGER_RNG_SEVENT03() {
    if ((RNG_SEVENT01_S1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_SEVENT03_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
            if ((RNG_SEVENT03_SPAWNED) == (FALSE)) {
                PRINTD("Dej 25 sztuk z³ota (S1)");
                WLD_INSERTNPC(58953, RNG_SEVENT03_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_SEVENT03_SPAWNED = 1;
            };
        };
    };
}

