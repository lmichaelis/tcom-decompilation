func void EVENTSMANAGER_TRAP34() {
    if ((TRAP34_SPAWNED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if (((NPC_GETDISTTOWP(HERO, RNG_TRAP34A35_WAYPOINT)) <= (RNG_RADIUS_LESSTHENVERYFAR)) && ((RND_TRAP05_M7_CH4) == (1))) {
                TRAP34_SPAWNED = TRUE;
                WLD_INSERTNPC(0xd838, RNG_TRAP34A35_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                PRINTD("Zbir atakuje stra¿nika! (I) ");
            };
        };
    };
}

