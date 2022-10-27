func void EVENTSMANAGER_RNG_SEVENT01() {
    if ((RNG_SEVENT01_S2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_SEVENT01_WAYPOINT)) <= (RNG_RADIUS_NORMAL)) {
            if (((RNG_SEVENT01_SPAWNED) == (FALSE)) && ((RND_NOSCARYEVENTS) == (FALSE))) {
                PRINTD("Lost in Vivo, lost in life (S2)");
                WLD_INSERTNPC(0xe68e, RNG_SEVENT01_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_SEVENT01_SPAWNED = 1;
            };
        };
    };
}

