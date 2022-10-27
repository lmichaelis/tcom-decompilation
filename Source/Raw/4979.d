func void EVENTSMANAGER_TRAP03() {
    if ((RND_TRAP02_M3_CH2) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP03_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
            if ((TRAP03_SPAWNED) == (FALSE)) {
                PRINTD("Ratuj Wieœniaka!");
                PRINTD("Ktoœ go bije w Silbach!");
                WLD_INSERTNPC(0xe1ce, "VILLAGE_PATH_196_EVENT04");
                WLD_INSERTNPC(0xe1ca, "VILLAGE_PATH_196_EVENT03");
                WLD_INSERTNPC(0xe1c6, "VILLAGE_PATH_196_EVENT02");
                WLD_INSERTNPC(0xe1d2, RNG_TRAP03_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP03_SPAWNED = 1;
            };
        };
    };
}

