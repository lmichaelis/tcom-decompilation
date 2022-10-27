func void EVENTSMANAGER_TRAP68() {
    if ((TRAP68_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP68_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((RND_TRAP_P10_CH2) == (1))) {
            TRAP68_SPAWNED = TRUE;
            WLD_INSERTNPC(0xdf8e, RNG_TRAP68_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Bandzior, po prostu");
        };
    };
}

