func void EVENTSMANAGER_TRAP19() {
    if ((TRAP19_SPAWNED) == (FALSE)) {
        if ((RND_TRAP_P3_CH4) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_TRAP19_WAYPOINT)) <= (RNG_RADIUS_FAR)) {
                TRAP19_SPAWNED = TRUE;
                PRINTD("Polna bestia slayer slayeruje polne bestie");
                PRINTD("w parcie 3");
                WLD_INSERTNPC(0xda06, RNG_TRAP19_WAYPOINT);
                WLD_INSERTNPC(0xc501, RNG_TRAP19_WAYPOINT);
                WLD_INSERTNPC(0xc501, RNG_TRAP19_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

