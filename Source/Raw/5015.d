func void EVENTSMANAGER_TRAP35() {
    if ((TRAP35_SPAWNED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if (((NPC_GETDISTTOWP(HERO, RNG_TRAP34A35_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) && ((RND_TRAP06_M7_CH4) == (1))) {
                TRAP35_SPAWNED = TRUE;
                WLD_INSERTNPC(0xd83b, RNG_TRAP34A35_WAYPOINT);
                RANDOMEVENT_SPAWNCOUNTER();
                PRINTD("Zbir atakuje stra¿nika! (II) ");
            };
        };
    };
}

