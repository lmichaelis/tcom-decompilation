func void EVENTSMANAGER_TRAPFELLER() {
    if ((RND_FELLER_P3_CH2) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAPFELLER_WAYPOINT)) <= (RNG_RADIUS_LARGE)) {
            if ((TRAP_SPAWNFELLER) == (FALSE)) {
                PRINTD("Ziomek feller czeka");
                TRAP_SPAWNFELLER = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
                WLD_INSERTNPC(0xd9dd, "PART3_PATH_17");
                BDT_2263_FELLER.AIVAR[15] = TRUE;
                EVENT_CH2_FELLER();
            };
        };
    };
}

