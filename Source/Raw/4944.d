func void EVENTSMANAGER_RNG_PAEVENT11() {
    if ((RNG_PAEVENT11_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT11) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT11_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT11_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb53, RNG_PAEVENT11_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT11_SPAWNED = 1;
                };
            };
        };
    };
}

