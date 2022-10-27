func void EVENTSMANAGER_RNG_PAEVENT01() {
    if ((RNG_PAEVENT01_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT01) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT01_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT01_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb35, RNG_PAEVENT01_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT01_SPAWNED = 1;
                };
            };
        };
    };
}

