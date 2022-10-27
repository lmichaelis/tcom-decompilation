func void EVENTSMANAGER_NS45() {
    if ((RND_NS02_M1) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS45_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS45_SPAWNED) == (FALSE)) {
                PRINTD("Kroniki Myrtany wysz³y");
                PRINTD("W M1");
                WLD_INSERTNPC(0xcc42, RNG_NS45_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS45_SPAWNED = 1;
            };
        };
    };
}

