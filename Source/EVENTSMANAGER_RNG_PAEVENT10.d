func void EVENTSMANAGER_RNG_PAEVENT10() {
    if ((RNG_PAEVENT10_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT10) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT10_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT10_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(56144, RNG_PAEVENT10_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT10_SPAWNED = 1;
                };
            };
        };
    };
}

