func void EVENTSMANAGER_RNG_PAEVENT05() {
    if ((RNG_PAEVENT05_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT05) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT05_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT05_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb41, RNG_PAEVENT05_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT05_SPAWNED = 1;
                };
            };
        };
    };
}

