func void EVENTSMANAGER_NS47() {
    if ((RND_NS05_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS47_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS47_SPAWNED) == (FALSE)) {
                PRINTD("Marihuanen w m3");
                WLD_INSERTNPC(53134, RNG_NS47_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS47_SPAWNED = 1;
            };
        };
    };
}

