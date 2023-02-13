func void EVENTSMANAGER_RNG_PAEVENT09() {
    if ((RNG_PAEVENT09_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT09) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT09_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT09_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(56141, RNG_PAEVENT09_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT09_SPAWNED = 1;
                };
            };
        };
    };
}

