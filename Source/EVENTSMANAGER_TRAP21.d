func void EVENTSMANAGER_TRAP21() {
    if ((TRAP21_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P7_CH3) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP21_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP21_SPAWNED = TRUE;
                PRINTD("Bandziory atakuj¹ kupca w parcie 7!");
                WLD_INSERTNPC(56483, RNG_TRAP21_WAYPOINT);
                WLD_INSERTNPC(56477, "PART7_PATH_21");
                WLD_INSERTNPC(56479, "PART7_PATH_179");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

