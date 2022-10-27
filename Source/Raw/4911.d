func void EVENTSMANAGER_NS71() {
    if ((RND_NS09_P12) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS71_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
            if ((NS71_SPAWNED) == (FALSE)) {
                PRINTD("Róg robi tu-tu");
                WLD_INSERTNPC(0xe1a9, "VILLAGE_PATH_85B");
                WLD_INSERTNPC(0xe1a6, RNG_NS71_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                NS71_SPAWNED = 1;
            };
        };
    };
}

