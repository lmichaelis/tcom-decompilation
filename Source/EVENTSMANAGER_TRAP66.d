func void EVENTSMANAGER_TRAP66() {
    if ((TRAP66_SPAWNED) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, RNG_TRAP66_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) && ((RND_TRAP_P6_CH2) == (1))) {
            TRAP66_SPAWNED = TRUE;
            WLD_INSERTNPC(57660, "PART6_FOREST_BANDIT01");
            WLD_INSERTNPC(57338, "PART6_FOREST_BANDIT02");
            WLD_INSERTNPC(57340, RNG_TRAP66_WAYPOINT);
            RANDOMEVENT_SPAWNCOUNTER();
            PRINTD("Bandziory, po prostu");
        };
    };
}
