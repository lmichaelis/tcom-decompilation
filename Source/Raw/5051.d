func void EVENTSMANAGER_TRAP69() {
    if ((TRAP69_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP69_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((RND_TRAP_P10_CH2) == (1))) {
            TRAP69_SPAWNED = TRUE;
            WLD_INSERTNPC(0xdaae, RNG_TRAP69_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Bandzior, po prostu");
        };
    };
}

