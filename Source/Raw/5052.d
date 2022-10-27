func void EVENTSMANAGER_TRAP70() {
    if ((TRAP70_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP70_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((RND_TRAP_P10_CH2) == (1))) {
            TRAP70_SPAWNED = TRUE;
            WLD_INSERTNPC(0xdab0, RNG_TRAP70_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Bandzior, po prostu");
        };
    };
}

