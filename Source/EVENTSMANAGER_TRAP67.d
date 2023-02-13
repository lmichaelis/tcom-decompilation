func void EVENTSMANAGER_TRAP67() {
    if ((TRAP67_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP67_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((RND_TRAP_P10_CH2) == (1))) {
            TRAP67_SPAWNED = TRUE;
            WLD_INSERTNPC(57228, RNG_TRAP67_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Bandzior, po prostu");
        };
    };
}

