func void EVENTSMANAGER_TRAP65() {
    if ((TRAP65_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP65_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((RND_TRAP_P15_CH2) == (1))) {
            TRAP65_SPAWNED = TRUE;
            WLD_INSERTNPC(58074, RNG_TRAP65_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Bandzior, po prostu");
        };
    };
}

