func void EVENTSMANAGER_RNG_PAEVENT04() {
    if ((RNG_PAEVENT04_SPAWNED) == (FALSE)) {
        if ((RNG_PAEVENT04) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_PAEVENT04_WAYPOINT)) <= (RNG_RADIUS_FARMORE)) {
                if ((RNG_PAEVENT04_SPAWNED) == (FALSE)) {
                    PRINTD("Ktoœ tu jest");
                    WLD_INSERTNPC(56126, RNG_PAEVENT04_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    RNG_PAEVENT04_SPAWNED = 1;
                };
            };
        };
    };
}

