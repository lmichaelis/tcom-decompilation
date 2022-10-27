func void EVENTSMANAGER_NS59() {
    if ((RND_NS07_M6) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS59_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS59_SPAWNED) == (FALSE)) {
                PRINTD("Eee eee uuu eee");
                PRINTD("Papryka w M6");
                WLD_INSERTNPC(0xd600, RNG_NS59_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS59_SPAWNED = 1;
            };
        };
    };
}

