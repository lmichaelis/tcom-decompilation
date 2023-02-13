func void EVENTSMANAGER_TRAP41() {
    if ((TRAP41_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_M1_CH5) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP41_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                PRINTD("Cz³owiek Volkera ciê prowadzi...");
                WLD_INSERTNPC(52253, "PARTM1_PATH_95A");
                WLD_INSERTNPC(52255, "PARTM1_PATH_95B");
                WLD_INSERTNPC(52257, RNG_TRAP41_WAYPOINT);
                TELEPORTNPCTOWP(52257, RNG_TRAP41_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP41_SPAWNED = TRUE;
            };
        };
    };
}

