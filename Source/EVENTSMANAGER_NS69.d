func void EVENTSMANAGER_NS69() {
    if ((RND_NS09_M6) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_NS69_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
            if ((NS69_SPAWNED) == (FALSE)) {
                PRINTD("Uh oh");
                PRINTD("W M6");
                WLD_INSERTNPC(54760, RNG_NS69_WAYPOINT);
                WLD_INSERTNPC(54763, "HARBOUR_PATH_HORNYFARMER02");
                WLD_INSERTNPC(54766, "HARBOUR_PATH_HORNYFARMER03");
                RANDOMEVENT_SPAWNCOUNTER();
                NS69_SPAWNED = 1;
            };
        };
    };
}

