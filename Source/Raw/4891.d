func void EVENTSMANAGER_NS54() {
    if (((RND_NS03_P8) == (1)) && (NPC_KNOWSINFO(HERO, 0x136b4))) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS54_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS54_SPAWNED) == (FALSE)) {
                PRINTD("£owienie ryb w parcie 8!");
                WLD_INSERTNPC(0xddc4, RNG_NS54_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS54_SPAWNED = 1;
            };
        };
    };
}

