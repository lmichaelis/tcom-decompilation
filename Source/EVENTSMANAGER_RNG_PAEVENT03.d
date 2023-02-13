func void EVENTSMANAGER_RNG_PAEVENT03() {
    if ((RNG_PAEVENT03_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT03) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT03_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT03_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(56123, RNG_PAEVENT03_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT03_SPAWNED = 1;
                };
            };
        };
    };
}

