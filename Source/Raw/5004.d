func void EVENTSMANAGER_TRAP24() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_SUCCESS)) && ((SQ508_RESULT) != (0))) {
        if ((TRAP24_SPAWNED) == (FALSE)) {
            if ((RND_TRAP_P8_CH5) == (2)) {
                if ((NPC_GETDISTTOWP(HERO, RNG_TRAP24_WAYPOINT)) <= (RNG_RADIUS_BIG)) {
                    TRAP24_SPAWNED = TRUE;
                    PRINTD("Zakon korwa co ty robisz w klasztorze?");
                    RANDOMEVENT_SPAWNCOUNTER();
                    WLD_INSERTNPC(0xddba, RNG_TRAP24_WAYPOINT);
                };
            };
        };
    };
}

