func void EVENTSMANAGER_TRAP08() {
    if ((RND_TRAP_P2_CH5) == (7)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_TRAP08_WAYPOINT)) <= (RNG_RADIUS_VERYFARMORE)) {
            if ((TRAP08_SPAWNED) == (FALSE)) {
                PRINTD("Zakon korwa kiedy ³owcy?");
                PRINTD("W swoim kurwa teraz");
                WLD_INSERTNPC(0xd98e, RNG_TRAP08_WAYPOINT);
                WLD_INSERTNPC(0xd991, "PART2_EASTEREGG_ADI");
                WLD_INSERTNPC(0xd994, "PART2_EASTEREGG_MAKOT");
                WLD_INSERTNPC(0xd997, "PART2_EASTEREGG_REG");
                RANDOMEVENT_SPAWNCOUNTER();
                TRAP08_SPAWNED = 1;
            };
        };
    };
}

