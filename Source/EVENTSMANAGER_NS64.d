func void EVENTSMANAGER_NS64() {
    if ((RND_NS08_M3) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS64_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS64_SPAWNED) == (FALSE)) {
                PRINTD("Spalmy to miasto");
                PRINTD("w parcie m3");
                WLD_INSERTNPC(53145, RNG_NS64_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS64_SPAWNED = 1;
            };
        };
    };
}

