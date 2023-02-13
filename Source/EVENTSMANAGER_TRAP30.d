func void EVENTSMANAGER_TRAP30() {
    if ((TRAP30_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP30_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) && ((RND_TRAP_M7_CH4) == (1))) {
            TRAP30_SPAWNED = TRUE;
            WLD_INSERTNPC(55344, RNG_TRAP30_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Zbir atakuje opiekuna slumsów ! (I) ");
        };
    };
}

