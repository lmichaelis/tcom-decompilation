func void EVENTSMANAGER_RNG_PAEVENT08() {
    if ((RNG_PAEVENT08_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT08) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT08_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT08_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb4a, RNG_PAEVENT08_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT08_SPAWNED = 1;
                };
            };
        };
    };
}

