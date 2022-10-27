func void EVENTSMANAGER_TRAP33() {
    if ((TRAP33_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP33_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) && ((RND_TRAP04_M7_CH4) == (1))) {
            TRAP33_SPAWNED = TRUE;
            WLD_INSERTNPC(0xd836, RNG_TRAP33_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Zbir atakuje opiekuna slumsów ! (IV) ");
        };
    };
}

