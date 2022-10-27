func void EVENTSMANAGER_RNG_PAEVENT02() {
    if ((RNG_PAEVENT02_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT02) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT02_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT02_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdb38, RNG_PAEVENT02_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT02_SPAWNED = 1;
                };
            };
        };
    };
}

