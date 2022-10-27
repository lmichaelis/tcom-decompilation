func void EVENTSMANAGER_RNG_PAEVENT07() {
    if ((RNG_PAEVENT07_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT07) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT07_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT07_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb47, RNG_PAEVENT07_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT07_SPAWNED = 1;
                };
            };
        };
    };
}

