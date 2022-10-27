func void EVENTSMANAGER_RNG_PAEVENTSWAMP() {
    if ((RNG_PAEVENTSWAMP_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENTSWAMP) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENTSWAMP_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENTSWAMP_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(0xdfd3, RNG_PAEVENTSWAMP_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENTSWAMP_SPAWNED = 1;
                };
            };
        };
    };
}

