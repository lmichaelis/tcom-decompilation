func void EVENTSMANAGER_TRAP55() {
    if ((TRAP55_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P12_CH5) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP55_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
                PRINTD("reference do starego filmu Kairosa");
                WLD_INSERTNPC(0xe1a1, RNG_TRAP55_WAYPOINT);
                WLD_INSERTNPC(0xc672, "PART12_EDMUND_EVENT_02");
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP55_SPAWNED = TRUE;
            };
        };
    };
}

