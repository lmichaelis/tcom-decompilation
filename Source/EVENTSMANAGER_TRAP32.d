func void EVENTSMANAGER_TRAP32() {
    if ((TRAP32_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP32_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) && ((RND_TRAP03_M7_CH4) == (1))) {
            TRAP32_SPAWNED = TRUE;
            WLD_INSERTNPC(55348, RNG_TRAP32_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Zbir atakuje opiekuna slumsów ! (III) ");
        };
    };
}

