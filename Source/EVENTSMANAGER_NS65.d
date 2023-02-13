func void EVENTSMANAGER_NS65() {
    if ((RND_NS05_M1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS65_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS65_SPAWNED) == (FALSE)) {
                PRINTD("Zabierz mnie do wilczego");
                PRINTD("W M1");
                WLD_INSERTNPC(52299, RNG_NS65_WAYPOINT);
                WLD_INSERTNPC(52283, "PARTM1_PATH_88A");
                RANDOMEVENT_SPAWNCOUNTER();
                NS65_SPAWNED = 1;
            };
        };
    };
}

