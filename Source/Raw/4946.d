func void EVENTSMANAGER_RNG_PAEVENT12() {
    if ((RNG_PAEVENT12_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT12) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT12_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT12_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb56, RNG_PAEVENT12_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT12_SPAWNED = 1;
                };
            };
        };
    };
}

