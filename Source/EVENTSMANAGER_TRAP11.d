func void EVENTSMANAGER_TRAP11() {
    if ((RND_TRAP_M7_CH2) == (1)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP11_WAYPOINT)) <= (RNG_RADIUS_SMALL)) && ((TRAP11_SPAWNED) == (FALSE))) {
            TRAP11_SPAWNED = TRUE;
            WLD_INSERTNPC(55364, RNG_TRAP11_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Atak menela z dachu!");
        };
    };
}

