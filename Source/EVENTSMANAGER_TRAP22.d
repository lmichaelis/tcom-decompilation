func void EVENTSMANAGER_TRAP22() {
    if ((TRAP22_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P4_CH3) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP22_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                TRAP22_SPAWNED = TRUE;
                PRINTD("Araxos vs Warg i orkowy pies w parcie 4");
                WLD_INSERTNPC(56005, RNG_TRAP22_WAYPOINT);
                WLD_INSERTNPC(51048, "PART4_PATHFOREST_11");
                WLD_INSERTNPC(50678, "PART4_PATHFOREST_11");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

