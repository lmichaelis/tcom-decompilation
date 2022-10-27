func void EVENTSMANAGER_NS22() {
    if ((RND_NS04_M5) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS22_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS22_SPAWNED) == (FALSE)) {
                PRINTD("Dwie laski chowaj¹ siê za ratuszem w m5");
                WLD_INSERTNPC(0xd258, RNG_NS22_WAYPOINT);
                WLD_INSERTNPC(0xd255, "PARTM5_SECRETMEETING_02");
                RANDOMEVENT_SPAWNCOUNTER();
                NS22_SPAWNED = 1;
            };
        };
    };
}

