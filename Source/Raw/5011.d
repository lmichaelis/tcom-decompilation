func void EVENTSMANAGER_TRAP31() {
    if ((TRAP31_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP31_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) && ((RND_TRAP02_M7_CH4) == (1))) {
            TRAP31_SPAWNED = TRUE;
            WLD_INSERTNPC(0xd832, RNG_TRAP31_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Zbir atakuje opiekuna slumsów ! (II) ");
        };
    };
}

