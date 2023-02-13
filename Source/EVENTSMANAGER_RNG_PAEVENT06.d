func void EVENTSMANAGER_RNG_PAEVENT06() {
    if ((RNG_PAEVENT06_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT06) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT06_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT06_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(56132, RNG_PAEVENT06_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT06_SPAWNED = 1;
                };
            };
        };
    };
}

